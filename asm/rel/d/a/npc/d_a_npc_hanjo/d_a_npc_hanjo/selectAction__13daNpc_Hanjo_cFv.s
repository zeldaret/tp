lbl_809FB59C:
/* 809FB59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FB5A0  7C 08 02 A6 */	mflr r0
/* 809FB5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FB5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FB5AC  93 C1 00 08 */	stw r30, 8(r1)
/* 809FB5B0  7C 7F 1B 78 */	mr r31, r3
/* 809FB5B4  3C 60 80 A0 */	lis r3, cNullVec__6Z2Calc@ha
/* 809FB5B8  3B C3 09 40 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 809FB5BC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809FB5C0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809FB5C4  80 64 00 00 */	lwz r3, 0(r4)
/* 809FB5C8  80 04 00 04 */	lwz r0, 4(r4)
/* 809FB5CC  90 7F 16 E0 */	stw r3, 0x16e0(r31)
/* 809FB5D0  90 1F 16 E4 */	stw r0, 0x16e4(r31)
/* 809FB5D4  80 04 00 08 */	lwz r0, 8(r4)
/* 809FB5D8  90 1F 16 E8 */	stw r0, 0x16e8(r31)
/* 809FB5DC  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FB5E0  2C 00 00 01 */	cmpwi r0, 1
/* 809FB5E4  41 82 00 98 */	beq lbl_809FB67C
/* 809FB5E8  40 80 00 B0 */	bge lbl_809FB698
/* 809FB5EC  2C 00 00 00 */	cmpwi r0, 0
/* 809FB5F0  40 80 00 08 */	bge lbl_809FB5F8
/* 809FB5F4  48 00 00 A4 */	b lbl_809FB698
lbl_809FB5F8:
/* 809FB5F8  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 809FB5FC  80 1E 07 3C */	lwz r0, 0x73c(r30)
/* 809FB600  90 7F 16 E0 */	stw r3, 0x16e0(r31)
/* 809FB604  90 1F 16 E4 */	stw r0, 0x16e4(r31)
/* 809FB608  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 809FB60C  90 1F 16 E8 */	stw r0, 0x16e8(r31)
/* 809FB610  38 60 00 AD */	li r3, 0xad
/* 809FB614  4B 75 14 98 */	b daNpcT_chkEvtBit__FUl
/* 809FB618  2C 03 00 00 */	cmpwi r3, 0
/* 809FB61C  40 82 00 94 */	bne lbl_809FB6B0
/* 809FB620  38 60 00 AB */	li r3, 0xab
/* 809FB624  4B 75 14 88 */	b daNpcT_chkEvtBit__FUl
/* 809FB628  2C 03 00 00 */	cmpwi r3, 0
/* 809FB62C  40 82 00 84 */	bne lbl_809FB6B0
/* 809FB630  38 60 00 B7 */	li r3, 0xb7
/* 809FB634  4B 75 14 78 */	b daNpcT_chkEvtBit__FUl
/* 809FB638  2C 03 00 00 */	cmpwi r3, 0
/* 809FB63C  40 82 00 74 */	bne lbl_809FB6B0
/* 809FB640  38 60 02 35 */	li r3, 0x235
/* 809FB644  4B 75 14 68 */	b daNpcT_chkEvtBit__FUl
/* 809FB648  2C 03 00 00 */	cmpwi r3, 0
/* 809FB64C  40 82 00 14 */	bne lbl_809FB660
/* 809FB650  38 60 00 18 */	li r3, 0x18
/* 809FB654  4B 75 14 58 */	b daNpcT_chkEvtBit__FUl
/* 809FB658  2C 03 00 00 */	cmpwi r3, 0
/* 809FB65C  41 82 00 54 */	beq lbl_809FB6B0
lbl_809FB660:
/* 809FB660  80 7E 07 44 */	lwz r3, 0x744(r30)
/* 809FB664  80 1E 07 48 */	lwz r0, 0x748(r30)
/* 809FB668  90 7F 16 E0 */	stw r3, 0x16e0(r31)
/* 809FB66C  90 1F 16 E4 */	stw r0, 0x16e4(r31)
/* 809FB670  80 1E 07 4C */	lwz r0, 0x74c(r30)
/* 809FB674  90 1F 16 E8 */	stw r0, 0x16e8(r31)
/* 809FB678  48 00 00 38 */	b lbl_809FB6B0
lbl_809FB67C:
/* 809FB67C  80 7E 07 50 */	lwz r3, 0x750(r30)
/* 809FB680  80 1E 07 54 */	lwz r0, 0x754(r30)
/* 809FB684  90 7F 16 E0 */	stw r3, 0x16e0(r31)
/* 809FB688  90 1F 16 E4 */	stw r0, 0x16e4(r31)
/* 809FB68C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 809FB690  90 1F 16 E8 */	stw r0, 0x16e8(r31)
/* 809FB694  48 00 00 1C */	b lbl_809FB6B0
lbl_809FB698:
/* 809FB698  80 7E 07 5C */	lwz r3, 0x75c(r30)
/* 809FB69C  80 1E 07 60 */	lwz r0, 0x760(r30)
/* 809FB6A0  90 7F 16 E0 */	stw r3, 0x16e0(r31)
/* 809FB6A4  90 1F 16 E4 */	stw r0, 0x16e4(r31)
/* 809FB6A8  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 809FB6AC  90 1F 16 E8 */	stw r0, 0x16e8(r31)
lbl_809FB6B0:
/* 809FB6B0  38 60 00 01 */	li r3, 1
/* 809FB6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FB6B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FB6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FB6C0  7C 08 03 A6 */	mtlr r0
/* 809FB6C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809FB6C8  4E 80 00 20 */	blr 
