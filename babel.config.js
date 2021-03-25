module.exports = {
  presets: [
    [
      '@babel/preset-env',
      {
        targets: {
          node: 'current'
        }
      }
    ],
    '@babel/preset-typescript'
  ],
  plugins: [
    ['module-resolver', {
      alias: {
        '@controllers': './src/app/controllers',
        '@models': './src/app/models',
        '@midlewares': './src/app/midlewares',
        '@validators': './src/app/validators',
        '@config': './src/app/config',
        '@routers': './src/routers',
        '@views': './src/views',
        '@database': './src/database',
        '@interfaces': './src/interfaces'
      }
    }],
    'babel-plugin-transform-typescript-metadata',
    ['@babel/plugin-proposal-decorators', { legacy: true }],
    ['@babel/plugin-proposal-class-properties', { loose: true }]
  ],
  ignore: [
    '**/*.spec.ts'
  ]
}
