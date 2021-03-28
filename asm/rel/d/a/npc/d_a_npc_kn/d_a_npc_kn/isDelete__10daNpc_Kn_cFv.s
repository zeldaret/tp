lbl_80A2B878:
/* 80A2B878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2B87C  7C 08 02 A6 */	mflr r0
/* 80A2B880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2B884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2B888  7C 7F 1B 78 */	mr r31, r3
/* 80A2B88C  88 03 15 AC */	lbz r0, 0x15ac(r3)
/* 80A2B890  2C 00 00 00 */	cmpwi r0, 0
/* 80A2B894  41 82 00 14 */	beq lbl_80A2B8A8
/* 80A2B898  41 80 00 6C */	blt lbl_80A2B904
/* 80A2B89C  2C 00 00 07 */	cmpwi r0, 7
/* 80A2B8A0  40 80 00 64 */	bge lbl_80A2B904
/* 80A2B8A4  48 00 00 1C */	b lbl_80A2B8C0
lbl_80A2B8A8:
/* 80A2B8A8  38 60 01 53 */	li r3, 0x153
/* 80A2B8AC  4B 72 12 00 */	b daNpcT_chkEvtBit__FUl
/* 80A2B8B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B8B4  40 82 00 50 */	bne lbl_80A2B904
/* 80A2B8B8  38 60 00 00 */	li r3, 0
/* 80A2B8BC  48 00 00 4C */	b lbl_80A2B908
lbl_80A2B8C0:
/* 80A2B8C0  54 00 08 3C */	slwi r0, r0, 1
/* 80A2B8C4  3C 60 80 A4 */	lis r3, l_appearFlag@ha
/* 80A2B8C8  38 63 17 E8 */	addi r3, r3, l_appearFlag@l
/* 80A2B8CC  7C 63 02 AE */	lhax r3, r3, r0
/* 80A2B8D0  4B 72 11 DC */	b daNpcT_chkEvtBit__FUl
/* 80A2B8D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B8D8  41 82 00 2C */	beq lbl_80A2B904
/* 80A2B8DC  88 1F 15 AC */	lbz r0, 0x15ac(r31)
/* 80A2B8E0  54 00 08 3C */	slwi r0, r0, 1
/* 80A2B8E4  3C 60 80 A4 */	lis r3, l_delFlag@ha
/* 80A2B8E8  38 63 17 F8 */	addi r3, r3, l_delFlag@l
/* 80A2B8EC  7C 63 02 AE */	lhax r3, r3, r0
/* 80A2B8F0  4B 72 11 BC */	b daNpcT_chkEvtBit__FUl
/* 80A2B8F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B8F8  40 82 00 0C */	bne lbl_80A2B904
/* 80A2B8FC  38 60 00 00 */	li r3, 0
/* 80A2B900  48 00 00 08 */	b lbl_80A2B908
lbl_80A2B904:
/* 80A2B904  38 60 00 01 */	li r3, 1
lbl_80A2B908:
/* 80A2B908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2B90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2B910  7C 08 03 A6 */	mtlr r0
/* 80A2B914  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2B918  4E 80 00 20 */	blr 
