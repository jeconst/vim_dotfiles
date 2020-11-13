if !empty(findfile('.rubocop.yml', '.;'))
  let b:ale_linters = ['rubocop']
  let b:ale_fixers = ['rubocop']
endif
