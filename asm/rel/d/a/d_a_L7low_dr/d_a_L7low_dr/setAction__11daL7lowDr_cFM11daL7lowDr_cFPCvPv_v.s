lbl_805AA5F8:
/* 805AA5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA5FC  7C 08 02 A6 */	mflr r0
/* 805AA600  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA608  93 C1 00 08 */	stw r30, 8(r1)
/* 805AA60C  7C 7E 1B 78 */	mr r30, r3
/* 805AA610  7C 9F 23 78 */	mr r31, r4
/* 805AA614  38 7E 06 24 */	addi r3, r30, 0x624
/* 805AA618  4B DB 7A 00 */	b __ptmf_test
/* 805AA61C  2C 03 00 00 */	cmpwi r3, 0
/* 805AA620  41 82 00 1C */	beq lbl_805AA63C
/* 805AA624  38 00 FF FF */	li r0, -1
/* 805AA628  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 805AA62C  7F C3 F3 78 */	mr r3, r30
/* 805AA630  39 9E 06 24 */	addi r12, r30, 0x624
/* 805AA634  4B DB 7A 50 */	b __ptmf_scall
/* 805AA638  60 00 00 00 */	nop 
lbl_805AA63C:
/* 805AA63C  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 805AA640  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 805AA644  90 7E 06 30 */	stw r3, 0x630(r30)
/* 805AA648  90 1E 06 34 */	stw r0, 0x634(r30)
/* 805AA64C  80 1E 06 2C */	lwz r0, 0x62c(r30)
/* 805AA650  90 1E 06 38 */	stw r0, 0x638(r30)
/* 805AA654  80 7F 00 00 */	lwz r3, 0(r31)
/* 805AA658  80 1F 00 04 */	lwz r0, 4(r31)
/* 805AA65C  90 7E 06 24 */	stw r3, 0x624(r30)
/* 805AA660  90 1E 06 28 */	stw r0, 0x628(r30)
/* 805AA664  80 1F 00 08 */	lwz r0, 8(r31)
/* 805AA668  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 805AA66C  38 00 00 00 */	li r0, 0
/* 805AA670  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 805AA674  7F C3 F3 78 */	mr r3, r30
/* 805AA678  39 9E 06 24 */	addi r12, r30, 0x624
/* 805AA67C  4B DB 7A 08 */	b __ptmf_scall
/* 805AA680  60 00 00 00 */	nop 
/* 805AA684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA688  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AA68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA690  7C 08 03 A6 */	mtlr r0
/* 805AA694  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA698  4E 80 00 20 */	blr 
