lbl_8097F454:
/* 8097F454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F458  7C 08 02 A6 */	mflr r0
/* 8097F45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F464  93 C1 00 08 */	stw r30, 8(r1)
/* 8097F468  7C 7E 1B 79 */	or. r30, r3, r3
/* 8097F46C  7C 9F 23 78 */	mr r31, r4
/* 8097F470  41 82 00 38 */	beq lbl_8097F4A8
/* 8097F474  3C 60 80 98 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8097F478  38 03 06 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8097F47C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8097F480  38 7E 00 14 */	addi r3, r30, 0x14
/* 8097F484  38 80 FF FF */	li r4, -1
/* 8097F488  4B 8E FA 90 */	b __dt__8cM3dGCirFv
/* 8097F48C  7F C3 F3 78 */	mr r3, r30
/* 8097F490  38 80 00 00 */	li r4, 0
/* 8097F494  4B 8E 8C 1C */	b __dt__13cBgS_PolyInfoFv
/* 8097F498  7F E0 07 35 */	extsh. r0, r31
/* 8097F49C  40 81 00 0C */	ble lbl_8097F4A8
/* 8097F4A0  7F C3 F3 78 */	mr r3, r30
/* 8097F4A4  4B 94 F8 98 */	b __dl__FPv
lbl_8097F4A8:
/* 8097F4A8  7F C3 F3 78 */	mr r3, r30
/* 8097F4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F4B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097F4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F4B8  7C 08 03 A6 */	mtlr r0
/* 8097F4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F4C0  4E 80 00 20 */	blr 
