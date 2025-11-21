import type { IconMap, SocialLink, Site } from '@/types'

export const SITE: Site = {
  title: 'blorf-writeups',
  description:
    'Personal Blog where I post writeups on different CTFs I solved or tried to solve.',
  href: 'https://moulahcene26.github.io/blorf-writeups',
  author: 'blorf26',
  locale: 'en-US',
  featuredPostCount: 2,
  postsPerPage: 3,
}

// Base path for deployments under a subdirectory (GitHub Pages)
export const BASE = '/blorf-writeups'

export const NAV_LINKS: SocialLink[] = [
  {
    href: `${BASE}/blog`,
    label: 'blog',
  },
  {
    href: `${BASE}/authors`,
    label: 'authors',
  },
  {
    href: `${BASE}/about`,
    label: 'about',
  },
]

export const SOCIAL_LINKS: SocialLink[] = [
  {
    href: 'https://github.com/moulahcene26',
    label: 'GitHub',
  },
  {
    href: 'https://www.linkedin.com/in/abdelmounaim-moulahcene',
    label: 'LinkedIn',
  },
  {
    href: 'mailto:oa_moulahcene@esi.dz',
    label: 'Email',
  },
]

export const ICON_MAP: IconMap = {
  Website: 'lucide:globe',
  GitHub: 'lucide:github',
  LinkedIn: 'lucide:linkedin',
  Twitter: 'lucide:twitter',
  Email: 'lucide:mail',
  RSS: 'lucide:rss',
}
