lbl_80570CD4:
/* 80570CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570CD8  7C 08 02 A6 */	mflr r0
/* 80570CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570CE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80570CE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80570CEC  7C 9F 23 78 */	mr r31, r4
/* 80570CF0  41 82 00 38 */	beq lbl_80570D28
/* 80570CF4  3C 60 80 57 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80570CF8  38 03 34 28 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80570CFC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80570D00  38 7E 00 14 */	addi r3, r30, 0x14
/* 80570D04  38 80 FF FF */	li r4, -1
/* 80570D08  4B CF E2 10 */	b __dt__8cM3dGCirFv
/* 80570D0C  7F C3 F3 78 */	mr r3, r30
/* 80570D10  38 80 00 00 */	li r4, 0
/* 80570D14  4B CF 73 9C */	b __dt__13cBgS_PolyInfoFv
/* 80570D18  7F E0 07 35 */	extsh. r0, r31
/* 80570D1C  40 81 00 0C */	ble lbl_80570D28
/* 80570D20  7F C3 F3 78 */	mr r3, r30
/* 80570D24  4B D5 E0 18 */	b __dl__FPv
lbl_80570D28:
/* 80570D28  7F C3 F3 78 */	mr r3, r30
/* 80570D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570D38  7C 08 03 A6 */	mtlr r0
/* 80570D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80570D40  4E 80 00 20 */	blr 
