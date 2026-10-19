create table if not exists public.comments (id uuid primary key default gen_random_uuid(), user_id uuid not null default auth.uid() references auth.users(id) on delete cascade, channel text not null, topic text not null, sentiment text not null check(sentiment in ('positivo','neutral','negativo')), content text not null check(length(content) between 1 and 3000), created_at timestamptz not null default now());
alter table public.comments enable row level security;
create policy "read own" on public.comments for select to authenticated using ((select auth.uid())=user_id);
create policy "insert own" on public.comments for insert to authenticated with check ((select auth.uid())=user_id);
grant select,insert on public.comments to authenticated;
