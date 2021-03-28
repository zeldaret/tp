lbl_80ACF37C:
/* 80ACF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF380  7C 08 02 A6 */	mflr r0
/* 80ACF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF38C  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACF390  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACF394  7C 9E 23 78 */	mr r30, r4
/* 80ACF398  41 82 00 C4 */	beq lbl_80ACF45C
/* 80ACF39C  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80ACF3A0  38 03 09 E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80ACF3A4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80ACF3A8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80ACF3AC  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF3B0  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF3B4  38 A0 00 0C */	li r5, 0xc
/* 80ACF3B8  38 C0 00 03 */	li r6, 3
/* 80ACF3BC  4B 89 29 2C */	b __destroy_arr
/* 80ACF3C0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80ACF3C4  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF3C8  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF3CC  38 A0 00 0C */	li r5, 0xc
/* 80ACF3D0  38 C0 00 03 */	li r6, 3
/* 80ACF3D4  4B 89 29 14 */	b __destroy_arr
/* 80ACF3D8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80ACF3DC  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF3E0  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF3E4  38 A0 00 0C */	li r5, 0xc
/* 80ACF3E8  38 C0 00 03 */	li r6, 3
/* 80ACF3EC  4B 89 28 FC */	b __destroy_arr
/* 80ACF3F0  38 7F 00 78 */	addi r3, r31, 0x78
/* 80ACF3F4  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF3F8  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF3FC  38 A0 00 0C */	li r5, 0xc
/* 80ACF400  38 C0 00 03 */	li r6, 3
/* 80ACF404  4B 89 28 E4 */	b __destroy_arr
/* 80ACF408  38 7F 00 54 */	addi r3, r31, 0x54
/* 80ACF40C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF410  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF414  38 A0 00 0C */	li r5, 0xc
/* 80ACF418  38 C0 00 03 */	li r6, 3
/* 80ACF41C  4B 89 28 CC */	b __destroy_arr
/* 80ACF420  38 7F 00 30 */	addi r3, r31, 0x30
/* 80ACF424  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha
/* 80ACF428  38 84 EE FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80ACF42C  38 A0 00 0C */	li r5, 0xc
/* 80ACF430  38 C0 00 03 */	li r6, 3
/* 80ACF434  4B 89 28 B4 */	b __destroy_arr
/* 80ACF438  28 1F 00 00 */	cmplwi r31, 0
/* 80ACF43C  41 82 00 10 */	beq lbl_80ACF44C
/* 80ACF440  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACF444  38 03 09 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACF448  90 1F 00 04 */	stw r0, 4(r31)
lbl_80ACF44C:
/* 80ACF44C  7F C0 07 35 */	extsh. r0, r30
/* 80ACF450  40 81 00 0C */	ble lbl_80ACF45C
/* 80ACF454  7F E3 FB 78 */	mr r3, r31
/* 80ACF458  4B 7F F8 E4 */	b __dl__FPv
lbl_80ACF45C:
/* 80ACF45C  7F E3 FB 78 */	mr r3, r31
/* 80ACF460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF464  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACF468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF46C  7C 08 03 A6 */	mtlr r0
/* 80ACF470  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF474  4E 80 00 20 */	blr 
