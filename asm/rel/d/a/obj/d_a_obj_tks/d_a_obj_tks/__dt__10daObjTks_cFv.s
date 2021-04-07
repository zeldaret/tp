lbl_80D0F480:
/* 80D0F480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F484  7C 08 02 A6 */	mflr r0
/* 80D0F488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F490  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0F494  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0F498  7C 9F 23 78 */	mr r31, r4
/* 80D0F49C  41 82 01 88 */	beq lbl_80D0F624
/* 80D0F4A0  3C 60 80 D1 */	lis r3, __vt__10daObjTks_c@ha /* 0x80D12A18@ha */
/* 80D0F4A4  38 03 2A 18 */	addi r0, r3, __vt__10daObjTks_c@l /* 0x80D12A18@l */
/* 80D0F4A8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80D0F4AC  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80D0F4B0  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D12954@ha */
/* 80D0F4B4  38 84 29 54 */	addi r4, r4, l_arcName@l /* 0x80D12954@l */
/* 80D0F4B8  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0F4BC  4B 31 DB 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D0F4C0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80D0F4C4  28 00 00 00 */	cmplwi r0, 0
/* 80D0F4C8  41 82 00 0C */	beq lbl_80D0F4D4
/* 80D0F4CC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D0F4D0  4B 30 1E 41 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80D0F4D4:
/* 80D0F4D4  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80D0F4D8  3C 03 00 01 */	addis r0, r3, 1
/* 80D0F4DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D0F4E0  41 82 00 08 */	beq lbl_80D0F4E8
/* 80D0F4E4  4B 30 A7 D5 */	bl fopAcM_delete__FUi
lbl_80D0F4E8:
/* 80D0F4E8  34 1E 0C 7C */	addic. r0, r30, 0xc7c
/* 80D0F4EC  41 82 00 84 */	beq lbl_80D0F570
/* 80D0F4F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D0F4F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D0F4F8  90 7E 0C B8 */	stw r3, 0xcb8(r30)
/* 80D0F4FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0F500  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 80D0F504  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0F508  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80D0F50C  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 80D0F510  41 82 00 54 */	beq lbl_80D0F564
/* 80D0F514  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D0F518  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D0F51C  90 7E 0D 9C */	stw r3, 0xd9c(r30)
/* 80D0F520  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0F524  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80D0F528  34 1E 0D A0 */	addic. r0, r30, 0xda0
/* 80D0F52C  41 82 00 10 */	beq lbl_80D0F53C
/* 80D0F530  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D12AC0@ha */
/* 80D0F534  38 03 2A C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D12AC0@l */
/* 80D0F538  90 1E 0D B4 */	stw r0, 0xdb4(r30)
lbl_80D0F53C:
/* 80D0F53C  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 80D0F540  41 82 00 24 */	beq lbl_80D0F564
/* 80D0F544  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0F548  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0F54C  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 80D0F550  34 1E 0D 80 */	addic. r0, r30, 0xd80
/* 80D0F554  41 82 00 10 */	beq lbl_80D0F564
/* 80D0F558  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D12ACC@ha */
/* 80D0F55C  38 03 2A CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D12ACC@l */
/* 80D0F560  90 1E 0D 98 */	stw r0, 0xd98(r30)
lbl_80D0F564:
/* 80D0F564  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80D0F568  38 80 00 00 */	li r4, 0
/* 80D0F56C  4B 37 4B 79 */	bl __dt__12dCcD_GObjInfFv
lbl_80D0F570:
/* 80D0F570  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80D0F574  41 82 00 88 */	beq lbl_80D0F5FC
/* 80D0F578  3C 60 80 D1 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80D12AD8@ha */
/* 80D0F57C  38 03 2A D8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80D12AD8@l */
/* 80D0F580  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80D0F584  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80D0F588  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F58C  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F590  38 A0 00 06 */	li r5, 6
/* 80D0F594  38 C0 00 04 */	li r6, 4
/* 80D0F598  4B 65 27 51 */	bl __destroy_arr
/* 80D0F59C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80D0F5A0  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F5A4  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F5A8  38 A0 00 06 */	li r5, 6
/* 80D0F5AC  38 C0 00 04 */	li r6, 4
/* 80D0F5B0  4B 65 27 39 */	bl __destroy_arr
/* 80D0F5B4  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80D0F5B8  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F5BC  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F5C0  38 A0 00 06 */	li r5, 6
/* 80D0F5C4  38 C0 00 04 */	li r6, 4
/* 80D0F5C8  4B 65 27 21 */	bl __destroy_arr
/* 80D0F5CC  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80D0F5D0  3C 80 80 D1 */	lis r4, __dt__5csXyzFv@ha /* 0x80D11FBC@ha */
/* 80D0F5D4  38 84 1F BC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80D11FBC@l */
/* 80D0F5D8  38 A0 00 06 */	li r5, 6
/* 80D0F5DC  38 C0 00 04 */	li r6, 4
/* 80D0F5E0  4B 65 27 09 */	bl __destroy_arr
/* 80D0F5E4  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80D0F5E8  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha /* 0x80D11FFC@ha */
/* 80D0F5EC  38 84 1F FC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80D11FFC@l */
/* 80D0F5F0  38 A0 00 0C */	li r5, 0xc
/* 80D0F5F4  38 C0 00 04 */	li r6, 4
/* 80D0F5F8  4B 65 26 F1 */	bl __destroy_arr
lbl_80D0F5FC:
/* 80D0F5FC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80D0F600  38 80 FF FF */	li r4, -1
/* 80D0F604  4B 5B 0E 1D */	bl __dt__10Z2CreatureFv
/* 80D0F608  7F C3 F3 78 */	mr r3, r30
/* 80D0F60C  38 80 00 00 */	li r4, 0
/* 80D0F610  48 00 2A 2D */	bl __dt__8daNpcF_cFv
/* 80D0F614  7F E0 07 35 */	extsh. r0, r31
/* 80D0F618  40 81 00 0C */	ble lbl_80D0F624
/* 80D0F61C  7F C3 F3 78 */	mr r3, r30
/* 80D0F620  4B 5B F7 1D */	bl __dl__FPv
lbl_80D0F624:
/* 80D0F624  7F C3 F3 78 */	mr r3, r30
/* 80D0F628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F62C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0F630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F634  7C 08 03 A6 */	mtlr r0
/* 80D0F638  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F63C  4E 80 00 20 */	blr 
