lbl_80B41448:
/* 80B41448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4144C  7C 08 02 A6 */	mflr r0
/* 80B41450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B41454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B41458  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4145C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B41460  7C 9F 23 78 */	mr r31, r4
/* 80B41464  41 82 00 38 */	beq lbl_80B4149C
/* 80B41468  3C 60 80 B4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B4146C  38 03 2D C4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B41470  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B41474  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B41478  38 80 FF FF */	li r4, -1
/* 80B4147C  4B 72 DA 9C */	b __dt__8cM3dGCirFv
/* 80B41480  7F C3 F3 78 */	mr r3, r30
/* 80B41484  38 80 00 00 */	li r4, 0
/* 80B41488  4B 72 6C 28 */	b __dt__13cBgS_PolyInfoFv
/* 80B4148C  7F E0 07 35 */	extsh. r0, r31
/* 80B41490  40 81 00 0C */	ble lbl_80B4149C
/* 80B41494  7F C3 F3 78 */	mr r3, r30
/* 80B41498  4B 78 D8 A4 */	b __dl__FPv
lbl_80B4149C:
/* 80B4149C  7F C3 F3 78 */	mr r3, r30
/* 80B414A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B414A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B414A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B414AC  7C 08 03 A6 */	mtlr r0
/* 80B414B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B414B4  4E 80 00 20 */	blr 
