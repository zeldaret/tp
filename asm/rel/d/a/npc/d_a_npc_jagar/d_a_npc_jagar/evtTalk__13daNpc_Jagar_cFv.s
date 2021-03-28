lbl_80A158A0:
/* 80A158A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A158A4  7C 08 02 A6 */	mflr r0
/* 80A158A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A158AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A158B0  7C 7F 1B 78 */	mr r31, r3
/* 80A158B4  3C 80 80 A2 */	lis r4, lit_4739@ha
/* 80A158B8  38 A4 AB 80 */	addi r5, r4, lit_4739@l
/* 80A158BC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A158C0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A158C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A158C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A158CC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A158D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A158D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A158D8  48 00 09 D9 */	bl chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i
/* 80A158DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A158E0  41 82 00 1C */	beq lbl_80A158FC
/* 80A158E4  7F E3 FB 78 */	mr r3, r31
/* 80A158E8  38 80 00 00 */	li r4, 0
/* 80A158EC  39 9F 0F E0 */	addi r12, r31, 0xfe0
/* 80A158F0  4B 94 C7 94 */	b __ptmf_scall
/* 80A158F4  60 00 00 00 */	nop 
/* 80A158F8  48 00 00 30 */	b lbl_80A15928
lbl_80A158FC:
/* 80A158FC  3C 60 80 A2 */	lis r3, lit_4744@ha
/* 80A15900  38 83 AB 8C */	addi r4, r3, lit_4744@l
/* 80A15904  80 64 00 00 */	lwz r3, 0(r4)
/* 80A15908  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1590C  90 61 00 08 */	stw r3, 8(r1)
/* 80A15910  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A15914  80 04 00 08 */	lwz r0, 8(r4)
/* 80A15918  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1591C  7F E3 FB 78 */	mr r3, r31
/* 80A15920  38 81 00 08 */	addi r4, r1, 8
/* 80A15924  48 00 09 B9 */	bl setAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i
lbl_80A15928:
/* 80A15928  38 60 00 01 */	li r3, 1
/* 80A1592C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A15930  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A15934  7C 08 03 A6 */	mtlr r0
/* 80A15938  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1593C  4E 80 00 20 */	blr 
