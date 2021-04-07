lbl_80AF7850:
/* 80AF7850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7854  7C 08 02 A6 */	mflr r0
/* 80AF7858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF785C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7860  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF7864  41 82 00 1C */	beq lbl_80AF7880
/* 80AF7868  3C A0 80 B0 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AFC638@ha */
/* 80AF786C  38 05 C6 38 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AFC638@l */
/* 80AF7870  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AF7874  7C 80 07 35 */	extsh. r0, r4
/* 80AF7878  40 81 00 08 */	ble lbl_80AF7880
/* 80AF787C  4B 7D 74 C1 */	bl __dl__FPv
lbl_80AF7880:
/* 80AF7880  7F E3 FB 78 */	mr r3, r31
/* 80AF7884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF7888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF788C  7C 08 03 A6 */	mtlr r0
/* 80AF7890  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7894  4E 80 00 20 */	blr 
