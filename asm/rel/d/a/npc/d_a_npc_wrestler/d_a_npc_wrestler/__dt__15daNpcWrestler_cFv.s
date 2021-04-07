lbl_80B2F4A0:
/* 80B2F4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F4A4  7C 08 02 A6 */	mflr r0
/* 80B2F4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F4AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2F4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2F4B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B2F4B8  7C 9F 23 78 */	mr r31, r4
/* 80B2F4BC  41 82 01 B0 */	beq lbl_80B2F66C
/* 80B2F4C0  3C 60 80 B4 */	lis r3, __vt__15daNpcWrestler_c@ha /* 0x80B42D34@ha */
/* 80B2F4C4  38 03 2D 34 */	addi r0, r3, __vt__15daNpcWrestler_c@l /* 0x80B42D34@l */
/* 80B2F4C8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B2F4CC  38 7E 0E 64 */	addi r3, r30, 0xe64
/* 80B2F4D0  3C 80 80 B4 */	lis r4, l_resALink@ha /* 0x80B41E18@ha */
/* 80B2F4D4  38 84 1E 18 */	addi r4, r4, l_resALink@l /* 0x80B41E18@l */
/* 80B2F4D8  80 84 00 00 */	lwz r4, 0(r4)
/* 80B2F4DC  4B 4F DB 2D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B2F4E0  38 7E 0E 6C */	addi r3, r30, 0xe6c
/* 80B2F4E4  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B2F4E8  54 00 10 3A */	slwi r0, r0, 2
/* 80B2F4EC  3C 80 80 B4 */	lis r4, l_resName@ha /* 0x80B41E1C@ha */
/* 80B2F4F0  38 84 1E 1C */	addi r4, r4, l_resName@l /* 0x80B41E1C@l */
/* 80B2F4F4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B2F4F8  4B 4F DB 11 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B2F4FC  38 60 00 09 */	li r3, 9
/* 80B2F500  4B 50 02 9D */	bl dComIfG_TimerDeleteRequest__Fi
/* 80B2F504  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B2F508  28 00 00 00 */	cmplwi r0, 0
/* 80B2F50C  41 82 00 0C */	beq lbl_80B2F518
/* 80B2F510  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B2F514  4B 4E 1D FD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B2F518:
/* 80B2F518  34 1E 0C 90 */	addic. r0, r30, 0xc90
/* 80B2F51C  41 82 00 84 */	beq lbl_80B2F5A0
/* 80B2F520  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B2F524  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B2F528  90 7E 0C CC */	stw r3, 0xccc(r30)
/* 80B2F52C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B2F530  90 1E 0D B0 */	stw r0, 0xdb0(r30)
/* 80B2F534  38 03 00 84 */	addi r0, r3, 0x84
/* 80B2F538  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80B2F53C  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 80B2F540  41 82 00 54 */	beq lbl_80B2F594
/* 80B2F544  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B2F548  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B2F54C  90 7E 0D B0 */	stw r3, 0xdb0(r30)
/* 80B2F550  38 03 00 58 */	addi r0, r3, 0x58
/* 80B2F554  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80B2F558  34 1E 0D B4 */	addic. r0, r30, 0xdb4
/* 80B2F55C  41 82 00 10 */	beq lbl_80B2F56C
/* 80B2F560  3C 60 80 B4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B42DDC@ha */
/* 80B2F564  38 03 2D DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B42DDC@l */
/* 80B2F568  90 1E 0D C8 */	stw r0, 0xdc8(r30)
lbl_80B2F56C:
/* 80B2F56C  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 80B2F570  41 82 00 24 */	beq lbl_80B2F594
/* 80B2F574  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B2F578  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B2F57C  90 1E 0D B0 */	stw r0, 0xdb0(r30)
/* 80B2F580  34 1E 0D 94 */	addic. r0, r30, 0xd94
/* 80B2F584  41 82 00 10 */	beq lbl_80B2F594
/* 80B2F588  3C 60 80 B4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B42DE8@ha */
/* 80B2F58C  38 03 2D E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B42DE8@l */
/* 80B2F590  90 1E 0D AC */	stw r0, 0xdac(r30)
lbl_80B2F594:
/* 80B2F594  38 7E 0C 90 */	addi r3, r30, 0xc90
/* 80B2F598  38 80 00 00 */	li r4, 0
/* 80B2F59C  4B 55 4B 49 */	bl __dt__12dCcD_GObjInfFv
lbl_80B2F5A0:
/* 80B2F5A0  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B2F5A4  3C 80 80 B4 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B40E38@ha */
/* 80B2F5A8  38 84 0E 38 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B40E38@l */
/* 80B2F5AC  38 A0 00 08 */	li r5, 8
/* 80B2F5B0  38 C0 00 02 */	li r6, 2
/* 80B2F5B4  4B 83 27 35 */	bl __destroy_arr
/* 80B2F5B8  34 1E 0B E4 */	addic. r0, r30, 0xbe4
/* 80B2F5BC  41 82 00 88 */	beq lbl_80B2F644
/* 80B2F5C0  3C 60 80 B4 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B42DF4@ha */
/* 80B2F5C4  38 03 2D F4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B42DF4@l */
/* 80B2F5C8  90 1E 0C 7C */	stw r0, 0xc7c(r30)
/* 80B2F5CC  38 7E 0C 60 */	addi r3, r30, 0xc60
/* 80B2F5D0  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F5D4  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F5D8  38 A0 00 06 */	li r5, 6
/* 80B2F5DC  38 C0 00 04 */	li r6, 4
/* 80B2F5E0  4B 83 27 09 */	bl __destroy_arr
/* 80B2F5E4  38 7E 0C 48 */	addi r3, r30, 0xc48
/* 80B2F5E8  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F5EC  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F5F0  38 A0 00 06 */	li r5, 6
/* 80B2F5F4  38 C0 00 04 */	li r6, 4
/* 80B2F5F8  4B 83 26 F1 */	bl __destroy_arr
/* 80B2F5FC  38 7E 0C 30 */	addi r3, r30, 0xc30
/* 80B2F600  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F604  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F608  38 A0 00 06 */	li r5, 6
/* 80B2F60C  38 C0 00 04 */	li r6, 4
/* 80B2F610  4B 83 26 D9 */	bl __destroy_arr
/* 80B2F614  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B2F618  3C 80 80 B4 */	lis r4, __dt__5csXyzFv@ha /* 0x80B40F8C@ha */
/* 80B2F61C  38 84 0F 8C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B40F8C@l */
/* 80B2F620  38 A0 00 06 */	li r5, 6
/* 80B2F624  38 C0 00 04 */	li r6, 4
/* 80B2F628  4B 83 26 C1 */	bl __destroy_arr
/* 80B2F62C  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80B2F630  3C 80 80 B4 */	lis r4, __dt__4cXyzFv@ha /* 0x80B40FCC@ha */
/* 80B2F634  38 84 0F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B40FCC@l */
/* 80B2F638  38 A0 00 0C */	li r5, 0xc
/* 80B2F63C  38 C0 00 04 */	li r6, 4
/* 80B2F640  4B 83 26 A9 */	bl __destroy_arr
lbl_80B2F644:
/* 80B2F644  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B2F648  38 80 FF FF */	li r4, -1
/* 80B2F64C  4B 79 0D D5 */	bl __dt__10Z2CreatureFv
/* 80B2F650  7F C3 F3 78 */	mr r3, r30
/* 80B2F654  38 80 00 00 */	li r4, 0
/* 80B2F658  48 01 19 B5 */	bl __dt__8daNpcF_cFv
/* 80B2F65C  7F E0 07 35 */	extsh. r0, r31
/* 80B2F660  40 81 00 0C */	ble lbl_80B2F66C
/* 80B2F664  7F C3 F3 78 */	mr r3, r30
/* 80B2F668  4B 79 F6 D5 */	bl __dl__FPv
lbl_80B2F66C:
/* 80B2F66C  7F C3 F3 78 */	mr r3, r30
/* 80B2F670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2F674  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2F678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F67C  7C 08 03 A6 */	mtlr r0
/* 80B2F680  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F684  4E 80 00 20 */	blr 
