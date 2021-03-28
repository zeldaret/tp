lbl_804A44D8:
/* 804A44D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A44DC  7C 08 02 A6 */	mflr r0
/* 804A44E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A44E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A44E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A44EC  41 82 00 1C */	beq lbl_804A4508
/* 804A44F0  3C A0 80 4B */	lis r5, __vt__8cM3dGPla@ha
/* 804A44F4  38 05 8C 04 */	addi r0, r5, __vt__8cM3dGPla@l
/* 804A44F8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804A44FC  7C 80 07 35 */	extsh. r0, r4
/* 804A4500  40 81 00 08 */	ble lbl_804A4508
/* 804A4504  4B E2 A8 38 */	b __dl__FPv
lbl_804A4508:
/* 804A4508  7F E3 FB 78 */	mr r3, r31
/* 804A450C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A4510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4514  7C 08 03 A6 */	mtlr r0
/* 804A4518  38 21 00 10 */	addi r1, r1, 0x10
/* 804A451C  4E 80 00 20 */	blr 
