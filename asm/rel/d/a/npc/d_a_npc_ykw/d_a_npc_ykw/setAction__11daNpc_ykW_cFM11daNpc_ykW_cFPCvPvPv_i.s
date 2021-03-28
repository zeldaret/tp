lbl_80B61854:
/* 80B61854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B61858  7C 08 02 A6 */	mflr r0
/* 80B6185C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B61860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B61864  93 C1 00 08 */	stw r30, 8(r1)
/* 80B61868  7C 7E 1B 78 */	mr r30, r3
/* 80B6186C  7C 9F 23 78 */	mr r31, r4
/* 80B61870  38 00 00 03 */	li r0, 3
/* 80B61874  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B61878  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80B6187C  4B 80 07 9C */	b __ptmf_test
/* 80B61880  2C 03 00 00 */	cmpwi r3, 0
/* 80B61884  41 82 00 18 */	beq lbl_80B6189C
/* 80B61888  7F C3 F3 78 */	mr r3, r30
/* 80B6188C  38 80 00 00 */	li r4, 0
/* 80B61890  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80B61894  4B 80 07 F0 */	b __ptmf_scall
/* 80B61898  60 00 00 00 */	nop 
lbl_80B6189C:
/* 80B6189C  38 00 00 00 */	li r0, 0
/* 80B618A0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B618A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B618A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B618AC  90 7E 0F E4 */	stw r3, 0xfe4(r30)
/* 80B618B0  90 1E 0F E8 */	stw r0, 0xfe8(r30)
/* 80B618B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B618B8  90 1E 0F EC */	stw r0, 0xfec(r30)
/* 80B618BC  38 7E 0F E4 */	addi r3, r30, 0xfe4
/* 80B618C0  4B 80 07 58 */	b __ptmf_test
/* 80B618C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B618C8  41 82 00 18 */	beq lbl_80B618E0
/* 80B618CC  7F C3 F3 78 */	mr r3, r30
/* 80B618D0  38 80 00 00 */	li r4, 0
/* 80B618D4  39 9E 0F E4 */	addi r12, r30, 0xfe4
/* 80B618D8  4B 80 07 AC */	b __ptmf_scall
/* 80B618DC  60 00 00 00 */	nop 
lbl_80B618E0:
/* 80B618E0  38 60 00 01 */	li r3, 1
/* 80B618E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B618E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B618EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B618F0  7C 08 03 A6 */	mtlr r0
/* 80B618F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B618F8  4E 80 00 20 */	blr 
