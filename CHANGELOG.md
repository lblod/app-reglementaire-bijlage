# app-reglementaire-bijlage

## 6.16.2

### Patch Changes

- [`4e2624d`](https://github.com/lblod/app-reglementaire-bijlage/commit/4e2624db0314537eec0a2a271b6949cfa76ab334) Thanks [@elpoelma](https://github.com/elpoelma)! - Update `reglement-publish-service` to version 5.0.1

## 6.16.1

### Patch Changes

- [`b3c2d56`](https://github.com/lblod/app-reglementaire-bijlage/commit/b3c2d56c1646c7602a06ba6744cd4983a87d87aa) Thanks [@abeforgit](https://github.com/abeforgit)! - bump frontend to 9.0.1

## 6.16.0

### Minor Changes

- [#77](https://github.com/lblod/app-reglementaire-bijlage/pull/77) [`b71102a`](https://github.com/lblod/app-reglementaire-bijlage/commit/b71102a719eacb780f5048cb7029675d0ade3f03) Thanks [@elpoelma](https://github.com/elpoelma)! - Implement updated data-model in mu-cl-resources config.

  Addition of the following resource models:

  - `template`
  - `template-version`
  - `decision-template`
  - `regulatory-attachment-template`

  Removal of the following resource models:

  - `published-regulatory-attachment-container`
  - `published-regulatory-attachment`

- [#77](https://github.com/lblod/app-reglementaire-bijlage/pull/77) [`72e103f`](https://github.com/lblod/app-reglementaire-bijlage/commit/72e103f1d9cbfa42cb436483d09f4055deef3baf) Thanks [@elpoelma](https://github.com/elpoelma)! - Add migrations responsible for moving regulatory-attachment templates to new data-model

- [#77](https://github.com/lblod/app-reglementaire-bijlage/pull/77) [`40e6318`](https://github.com/lblod/app-reglementaire-bijlage/commit/40e631835fc2ef37e7f2c583fa43c561bcabc314) Thanks [@elpoelma](https://github.com/elpoelma)! - Update mu-auth config to contain the following resource_types:
  - "http://data.lblod.info/vocabularies/gelinktnotuleren/Template"
  - "http://data.lblod.info/vocabularies/gelinktnotuleren/ReglementaireBijlageTemplate"
  - "http://data.lblod.info/vocabularies/gelinktnotuleren/BesluitTemplate"
  - "http://data.lblod.info/vocabularies/gelinktnotuleren/TemplateVersie"

## 6.15.0

### Minor Changes

- [`1373e16`](https://github.com/lblod/app-reglementaire-bijlage/commit/1373e1642778587ffccaa459a09bea54deeafa96) Thanks [@piemonkey](https://github.com/piemonkey)! - Update frontend to 8.6.0

## 6.14.0

### Minor Changes

- [`33d33b6`](https://github.com/lblod/app-reglementaire-bijlage/commit/33d33b6c7bf9b56fa66c19db5222f8a10b7ca3a6) Thanks [@abeforgit](https://github.com/abeforgit)! - Bump frontend to [8.5.0](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v8.5.0)

## 6.13.6

### Patch Changes

- [`8893ab8`](https://github.com/lblod/app-reglementaire-bijlage/commit/8893ab8fcde5c213f94a69d52a40a21c38d8de9a) Thanks [@elpoelma](https://github.com/elpoelma)! - Update frontend to version 8.4.0

## 6.13.5

### Patch Changes

- [#76](https://github.com/lblod/app-reglementaire-bijlage/pull/76) [`fd837a6`](https://github.com/lblod/app-reglementaire-bijlage/commit/fd837a69f1cbbb3523f434bc2edc32d77d830baf) Thanks [@elpoelma](https://github.com/elpoelma)! - Drop unused `attachment` model

- [#78](https://github.com/lblod/app-reglementaire-bijlage/pull/78) [`c262e79`](https://github.com/lblod/app-reglementaire-bijlage/commit/c262e793b11a5232b7910cf97ce76b35a885e5f6) Thanks [@elpoelma](https://github.com/elpoelma)! - Update `lblod/reglement-publish-service` to 4.1.0

- [#75](https://github.com/lblod/app-reglementaire-bijlage/pull/75) [`a27fb51`](https://github.com/lblod/app-reglementaire-bijlage/commit/a27fb510d60e08710c8057f071aadbf670a04ca2) Thanks [@elpoelma](https://github.com/elpoelma)! - Remove unresolvable relationships

- [#76](https://github.com/lblod/app-reglementaire-bijlage/pull/76) [`2f3765d`](https://github.com/lblod/app-reglementaire-bijlage/commit/2f3765d5a7b22a42865fd5ec5dfd7193bc122dbb) Thanks [@elpoelma](https://github.com/elpoelma)! - Drop unused `mapping` model

- [#78](https://github.com/lblod/app-reglementaire-bijlage/pull/78) [`d837b26`](https://github.com/lblod/app-reglementaire-bijlage/commit/d837b2669f94809e75024355e4bf8638b5abf8e9) Thanks [@elpoelma](https://github.com/elpoelma)! - Update frontend to version 8.3.1

- [#76](https://github.com/lblod/app-reglementaire-bijlage/pull/76) [`e73c647`](https://github.com/lblod/app-reglementaire-bijlage/commit/e73c647e0f73087e689303a42301eec4dbe44ed7) Thanks [@elpoelma](https://github.com/elpoelma)! - Drop unnecessary `starred` and `origin` properties of `editor-document` model

- [#78](https://github.com/lblod/app-reglementaire-bijlage/pull/78) [`77f84e4`](https://github.com/lblod/app-reglementaire-bijlage/commit/77f84e4de153ef430f5be5ba7ed7582e85ebb397) Thanks [@elpoelma](https://github.com/elpoelma)! - Introduce `/tasks/:id` endpoint used for fetching task information

- [`dec7780`](https://github.com/lblod/app-reglementaire-bijlage/commit/dec7780a22e03b24fd9bf330f78fa00eb7fef9cf) Thanks [@abeforgit](https://github.com/abeforgit)! - bump mu-cl-resources to 1.23.0 to avoid fatal bug

- [#76](https://github.com/lblod/app-reglementaire-bijlage/pull/76) [`76dec71`](https://github.com/lblod/app-reglementaire-bijlage/commit/76dec716d8983d5a6ebf5f12c0cc20599744cd45) Thanks [@elpoelma](https://github.com/elpoelma)! - Drop unnecessary/unused `status` property from `document-container` model

- [`43d774d`](https://github.com/lblod/app-reglementaire-bijlage/commit/43d774de244618fe533d7513a475d32987891529) Thanks [@abeforgit](https://github.com/abeforgit)! - bump virtuoso to 1.2.0-rc.1

- [#76](https://github.com/lblod/app-reglementaire-bijlage/pull/76) [`6ea8f03`](https://github.com/lblod/app-reglementaire-bijlage/commit/6ea8f03bb5bebb313a57552189312849230255a4) Thanks [@elpoelma](https://github.com/elpoelma)! - Drop unused `editor-document-statuses` model

## 6.13.4

### Patch Changes

- [`b07758b`](https://github.com/lblod/app-reglementaire-bijlage/commit/b07758b9d41a900ee8e978c87046ee5bd9c50b2f) Thanks [@abeforgit](https://github.com/abeforgit)! - bump frontend to [8.3.0](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v8.3.0)

## 6.13.3

### Patch Changes

- [`aaca04c`](https://github.com/lblod/app-reglementaire-bijlage/commit/aaca04caf97981066ff8e536fe31fe89c39d5bb6) Thanks [@elpoelma](https://github.com/elpoelma)! - Update frontend to [8.2.2](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v8.2.2)

## 6.13.2

### Patch Changes

- [`c422407`](https://github.com/lblod/app-reglementaire-bijlage/commit/c4224074e09a06d3e55cfe284a385afe62f4d53c) Thanks [@elpoelma](https://github.com/elpoelma)! - Update frontend to 8.2.1

## 6.13.1

### Patch Changes

- [#74](https://github.com/lblod/app-reglementaire-bijlage/pull/74) [`641546f`](https://github.com/lblod/app-reglementaire-bijlage/commit/641546fe58f8c8544ebfcdc4f80ed58209b879de) Thanks [@piemonkey](https://github.com/piemonkey)! - Use explicit mu-delta-notifier version

## 6.13.0

### Minor Changes

- [`9b8766d`](https://github.com/lblod/app-reglementaire-bijlage/commit/9b8766dd2928858dd6236bb84fdf04d699a3f909) Thanks [@piemonkey](https://github.com/piemonkey)! - Update editor version to 8.3.0

## 6.12.0

### Minor Changes

- [`3f265b0`](https://github.com/lblod/app-reglementaire-bijlage/commit/3f265b04a39f33ca22ccd7ed02b4df3286b4ee46) Thanks [@elpoelma](https://github.com/elpoelma)! - Update frontend to 8.1.0

## 6.11.2

### Patch Changes

- [`9c17336`](https://github.com/lblod/app-reglementaire-bijlage/commit/9c173367c0032fdf5632d9b7658ba76aeafaaefe) Thanks [@abeforgit](https://github.com/abeforgit)! - bump frontend to [v7.3.0](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v7.3.0)

## 6.11.1

### Patch Changes

- [#70](https://github.com/lblod/app-reglementaire-bijlage/pull/70) [`aa0629d`](https://github.com/lblod/app-reglementaire-bijlage/commit/aa0629d750588afe50202ee3a883331cf76fccd6) Thanks [@madnificent](https://github.com/madnificent)! - bump mu-identifier to 1.10.1

- [#73](https://github.com/lblod/app-reglementaire-bijlage/pull/73) [`24afb1c`](https://github.com/lblod/app-reglementaire-bijlage/commit/24afb1c8ea451411fa3740ced595c3be785f4d62) Thanks [@elpoelma](https://github.com/elpoelma)! - Use correct URL in footer

## 6.11.0

### Minor Changes

- [`2400669`](https://github.com/lblod/app-reglementaire-bijlage/commit/2400669b7d6293ebd8492dbb109f78a77eed8ad3) Thanks [@abeforgit](https://github.com/abeforgit)! - bump frontend to [v7.2.1](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v7.2.1)

- [#69](https://github.com/lblod/app-reglementaire-bijlage/pull/69) [`fd64a6e`](https://github.com/lblod/app-reglementaire-bijlage/commit/fd64a6ecdd3a5ca8bf070faa62d90e9a19d0f8f7) Thanks [@abeforgit](https://github.com/abeforgit)! - move to changesets for changelog management

## 6.10.0 (2023-08-29)

#### :rocket: Enhancement

- [#67](https://github.com/lblod/app-reglementaire-bijlage/pull/67) chore(deps): bump frontend to [v7.1.0](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v7.1.0) ([@abeforgit](https://github.com/abeforgit))

#### Committers: 1

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))

## 6.9.1 (2023-08-28)

bump reglement-publish service to 4.0.0

## 6.9.0 (2023-08-28)

#### :rocket: Enhancement

- [#66](https://github.com/lblod/app-reglementaire-bijlage/pull/66) chore: bump frontend to v7.0.0 ([@abeforgit](https://github.com/abeforgit))
- [#63](https://github.com/lblod/app-reglementaire-bijlage/pull/63) GN-4322: Connect Snippet List with Template ([@dkozickis](https://github.com/dkozickis))

#### Committers: 2

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))
- Deniss Kozickis ([@dkozickis](https://github.com/dkozickis))

## 6.8.1 (2023-08-08)

#### :house: Internal

- [#65](https://github.com/lblod/app-reglementaire-bijlage/pull/65) Update frontend to 6.10.1 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.8.0 (2023-08-08)

#### :house: Internal

- [#64](https://github.com/lblod/app-reglementaire-bijlage/pull/64) Update frontend to 6.10.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.7.0 (2023-07-28)

#### :rocket: Enhancement

- [#59](https://github.com/lblod/app-reglementaire-bijlage/pull/59) GN-4323: Public snippet ([@dkozickis](https://github.com/dkozickis))

#### :house: Internal

- [#62](https://github.com/lblod/app-reglementaire-bijlage/pull/62) Update frontend to 6.9.0 ([@elpoelma](https://github.com/elpoelma))
- [#61](https://github.com/lblod/app-reglementaire-bijlage/pull/61) Update reglement-publish-service to 3.1.0 ([@elpoelma](https://github.com/elpoelma))
- [#60](https://github.com/lblod/app-reglementaire-bijlage/pull/60) Update frontend to 6.8.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 2

- Deniss Kozickis ([@dkozickis](https://github.com/dkozickis))
- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.6.0 (2023-07-06)

#### :bug: Bug Fix

- [#57](https://github.com/lblod/app-reglementaire-bijlage/pull/57) GN-4415: ensure caching is correctly set-up and add deltanotifier to stack ([@elpoelma](https://github.com/elpoelma))

#### :house: Internal

- [#58](https://github.com/lblod/app-reglementaire-bijlage/pull/58) Update frontend to 6.7.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.5.1 (2023-06-27)

bump frontend to v6.6.1

## 6.5.0 (2023-06-22)

#### :house: Internal

- [#56](https://github.com/lblod/app-reglementaire-bijlage/pull/56) Bump frontend to 6.6.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.4.0 (2023-06-19)

#### :rocket: Enhancement

- [#53](https://github.com/lblod/app-reglementaire-bijlage/pull/53) Add snippets list resources ([@lagartoverde](https://github.com/lagartoverde))
- [#52](https://github.com/lblod/app-reglementaire-bijlage/pull/52) Add values to codelist options ([@lagartoverde](https://github.com/lagartoverde))

#### :house: Internal

- [#54](https://github.com/lblod/app-reglementaire-bijlage/pull/54) chore(frontend): bump frontend to [v6.5.0](https://github.com/lblod/frontend-reglementaire-bijlage/releases/tag/v6.5.0) ([@abeforgit](https://github.com/abeforgit))

#### Committers: 2

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.3.2 (2023-05-22)

#### :bug: Bug Fix

- [#51](https://github.com/lblod/app-reglementaire-bijlage/pull/51) update mu-cl-resources to 1.22.2 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.3.1 (2023-05-19)

#### :house: Internal

- [#50](https://github.com/lblod/app-reglementaire-bijlage/pull/50) Bump frontend to 6.3.1 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.3.0 (2023-05-18)

#### :rocket: Enhancement

- [#46](https://github.com/lblod/app-reglementaire-bijlage/pull/46) Actually use the cache service ([@elpoelma](https://github.com/elpoelma))

#### :house: Internal

- [#49](https://github.com/lblod/app-reglementaire-bijlage/pull/49) Bump frontend to 6.3.0 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 2

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.2.0 (2023-05-09)

#### :house: Internal

- [#48](https://github.com/lblod/app-reglementaire-bijlage/pull/48) bump frontend to 6.2.0 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.1.1 (2023-05-02)

#### :bug: Bug Fix

- [#47](https://github.com/lblod/app-reglementaire-bijlage/pull/47) move codex route up in the dispatcher ([@lagartoverde](https://github.com/lagartoverde))

#### :house: Internal

- [#45](https://github.com/lblod/app-reglementaire-bijlage/pull/45) Update mu-cl-resources to 1.22.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 2

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 6.1.0 (2023-04-10)

#### :rocket: Enhancement

- [#44](https://github.com/lblod/app-reglementaire-bijlage/pull/44) bump frontend to v6.1.0 ([@abeforgit](https://github.com/abeforgit))

#### Committers: 2

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))
- [@usrtim](https://github.com/usrtim)

## 6.0.1 (2023-03-13)

#### :house: Internal

- [#42](https://github.com/lblod/app-reglementaire-bijlage/pull/42) Remove authorization callback dispatch rule ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 6.0.0 (2023-03-13)

#### :house: Internal

- [#41](https://github.com/lblod/app-reglementaire-bijlage/pull/41) Update frontend to 6.0.0 ([@elpoelma](https://github.com/elpoelma))
- [#40](https://github.com/lblod/app-reglementaire-bijlage/pull/40) ensure sparql-cache and reglement-publisher restart automatically when needed ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 5.1.0 (2023-02-14)

#### :house: Internal

- [#39](https://github.com/lblod/app-reglementaire-bijlage/pull/39) Bump frontent to 5.1 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 5.0.0 (2023-01-26)

chore(frontend): bump to 5.0.0

## 4.0.0 (2023-01-25)

#### :house: Internal

- [#37](https://github.com/lblod/app-reglementaire-bijlage/pull/37) Update frontend to 4.0.1 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 3.0.6 (2023-01-12)

#### :house: Internal

- [#36](https://github.com/lblod/app-reglementaire-bijlage/pull/36) Update frontend to v3.1.2 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 3.0.5 (2022-12-19)

bump frontend to v3.1.1

## 3.0.4 (2022-11-17)

#### :house: Internal

- [#34](https://github.com/lblod/app-reglementaire-bijlage/pull/34) Update frontend to 3.0.2 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 3.0.3 (2022-11-09)

#### :house: Internal

- [#33](https://github.com/lblod/app-reglementaire-bijlage/pull/33) update publisher to 3.0.2 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 3.0.2 (2022-11-04)

#### :house: Internal

- [#32](https://github.com/lblod/app-reglementaire-bijlage/pull/32) update frontend ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 3.0.1 (2022-11-04)

#### :house: Internal

- [#31](https://github.com/lblod/app-reglementaire-bijlage/pull/31) update publisher version ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 3.0.0 (2022-11-03)

#### :rocket: Enhancement

- [#30](https://github.com/lblod/app-reglementaire-bijlage/pull/30) Feature/new rdfa model ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 2.0.1 (2022-10-21)

#### :bug: Bug Fix

- [#29](https://github.com/lblod/app-reglementaire-bijlage/pull/29) Move publisher port expose from main compose file to dev compose file ([@elpoelma](https://github.com/elpoelma))

#### Committers: 1

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))

## 2.0.0 (2022-10-21)

#### :rocket: Enhancement

- [#27](https://github.com/lblod/app-reglementaire-bijlage/pull/27) Feature: json api compliant publisher ([@elpoelma](https://github.com/elpoelma))
- [#28](https://github.com/lblod/app-reglementaire-bijlage/pull/28) Add position to concept model ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 2

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 1.2.0 (2022-10-12)

#### :rocket: Enhancement

- [#23](https://github.com/lblod/app-reglementaire-bijlage/pull/23) Added created on property to skos concept ([@lagartoverde](https://github.com/lagartoverde))

#### :house: Internal

- [#25](https://github.com/lblod/app-reglementaire-bijlage/pull/25) Replace lerna changelog plugin by new version ([@elpoelma](https://github.com/elpoelma))
- [#24](https://github.com/lblod/app-reglementaire-bijlage/pull/24) Bump frontend image to version 1.2.0 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 2

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 1.1.2 (2022-10-05)

#### :house: Internal

- [#22](https://github.com/lblod/app-reglementaire-bijlage/pull/22) Upgrade frontend to 1.1.2 ([@lagartoverde](https://github.com/lagartoverde))

#### Committers: 1

- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 1.1.1 (2022-10-04)

#### :house: Internal

- [#21](https://github.com/lblod/app-reglementaire-bijlage/pull/21) chore(deps): bump publish service to v1.2.1 ([@abeforgit](https://github.com/abeforgit))
- [#20](https://github.com/lblod/app-reglementaire-bijlage/pull/20) chore(deps): bump frontend to v1.1.1 ([@abeforgit](https://github.com/abeforgit))

#### Committers: 1

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))

## 1.1.0 (2022-10-03)

#### :bug: Bug Fix

- [#18](https://github.com/lblod/app-reglementaire-bijlage/pull/18) fix(publish): fix generation of template previews ([@abeforgit](https://github.com/abeforgit))

#### :house: Internal

- [#19](https://github.com/lblod/app-reglementaire-bijlage/pull/19) chore(deps): bump frontend to v1.1.0 ([@abeforgit](https://github.com/abeforgit))

#### Committers: 1

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))

## 1.0.1 (2022-09-30)

#### :rocket: Enhancement

- [#14](https://github.com/lblod/app-reglementaire-bijlage/pull/14) make sure codelists and concepts are added to the public graph ([@nvdk](https://github.com/nvdk))
- [#15](https://github.com/lblod/app-reglementaire-bijlage/pull/15) add raw sparql endpoint (without cache) for use within the frontend ([@nvdk](https://github.com/nvdk))

#### :house: Internal

- [#17](https://github.com/lblod/app-reglementaire-bijlage/pull/17) :cloud: Upgrade frontend to 1.0.3 ([@nvdk](https://github.com/nvdk))
- [#16](https://github.com/lblod/app-reglementaire-bijlage/pull/16) :cloud: Upgrade frontend to 1.0.2 ([@nvdk](https://github.com/nvdk))

#### Committers: 1

- Niels V ([@nvdk](https://github.com/nvdk))

## 1.0.0 (2022-09-22)

#### :house: Internal

- [#12](https://github.com/lblod/app-reglementaire-bijlage/pull/12) Add migrations to clear bestuurseenheden and set up mock account for abb ([@elpoelma](https://github.com/elpoelma))

#### Committers: 3

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))
- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 1.0.0-beta.4 (2022-09-16)

## 1.0.0-beta.3 (2022-09-16)

## 1.0.0-beta.2 (2022-09-08)

#### :rocket: Enhancement

- [#9](https://github.com/lblod/app-reglementaire-bijlage/pull/9) Feature/publication ([@lagartoverde](https://github.com/lagartoverde))

#### :bug: Bug Fix

- [#8](https://github.com/lblod/app-reglementaire-bijlage/pull/8) bump acmidm-login-service ([@elpoelma](https://github.com/elpoelma))

#### :house: Internal

- [#10](https://github.com/lblod/app-reglementaire-bijlage/pull/10) Bump frontend version to 1.0.0-beta.3 ([@elpoelma](https://github.com/elpoelma))

#### Committers: 2

- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## 1.0.0-beta.1 (2022-08-10)

#### :rocket: Enhancement

- [#5](https://github.com/lblod/app-reglementaire-bijlage/pull/5) Added publisher to codelists ([@lagartoverde](https://github.com/lagartoverde))
- [#6](https://github.com/lblod/app-reglementaire-bijlage/pull/6) Feature/add sparql endpointdpoint ([@lagartoverde](https://github.com/lagartoverde))

#### :house: Internal

- [#7](https://github.com/lblod/app-reglementaire-bijlage/pull/7) :cloud: Upgrade frontend to 1.0.0-beta.2 ([@nvdk](https://github.com/nvdk))

#### Committers: 2

- Niels V ([@nvdk](https://github.com/nvdk))
- Oscar Rodriguez Villalobos ([@lagartoverde](https://github.com/lagartoverde))

## v0.0.1 (2022-08-03)

#### :rocket: Enhancement

- [#4](https://github.com/lblod/app-reglementaire-bijlage/pull/4) Setup release-it ([@abeforgit](https://github.com/abeforgit))
- [#3](https://github.com/lblod/app-reglementaire-bijlage/pull/3) Setup beta frontend ([@abeforgit](https://github.com/abeforgit))
- [#2](https://github.com/lblod/app-reglementaire-bijlage/pull/2) Feature/acm idm integration ([@elpoelma](https://github.com/elpoelma))

#### Committers: 2

- Arne Bertrand ([@abeforgit](https://github.com/abeforgit))
- Elena Poelman ([@elpoelma](https://github.com/elpoelma))
