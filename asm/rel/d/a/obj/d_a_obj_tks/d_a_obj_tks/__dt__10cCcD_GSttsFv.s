lbl_80D12688:
/* 80D12688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1268C  7C 08 02 A6 */	mflr r0
/* 80D12690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12698  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1269C  41 82 00 1C */	beq lbl_80D126B8
/* 80D126A0  3C A0 80 D1 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D126A4  38 05 2A 90 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D126A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D126AC  7C 80 07 35 */	extsh. r0, r4
/* 80D126B0  40 81 00 08 */	ble lbl_80D126B8
/* 80D126B4  4B 5B C6 88 */	b __dl__FPv
lbl_80D126B8:
/* 80D126B8  7F E3 FB 78 */	mr r3, r31
/* 80D126BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D126C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D126C4  7C 08 03 A6 */	mtlr r0
/* 80D126C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D126CC  4E 80 00 20 */	blr 
