lbl_80A72254:
/* 80A72254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72258  7C 08 02 A6 */	mflr r0
/* 80A7225C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72264  93 C1 00 08 */	stw r30, 8(r1)
/* 80A72268  7C 7E 1B 78 */	mr r30, r3
/* 80A7226C  7C 9F 23 78 */	mr r31, r4
/* 80A72270  38 00 00 03 */	li r0, 3
/* 80A72274  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A72278  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80A7227C  4B 8E FD 9C */	b __ptmf_test
/* 80A72280  2C 03 00 00 */	cmpwi r3, 0
/* 80A72284  41 82 00 18 */	beq lbl_80A7229C
/* 80A72288  7F C3 F3 78 */	mr r3, r30
/* 80A7228C  38 80 00 00 */	li r4, 0
/* 80A72290  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80A72294  4B 8E FD F0 */	b __ptmf_scall
/* 80A72298  60 00 00 00 */	nop 
lbl_80A7229C:
/* 80A7229C  38 00 00 00 */	li r0, 0
/* 80A722A0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A722A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A722A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A722AC  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80A722B0  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80A722B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A722B8  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80A722BC  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80A722C0  4B 8E FD 58 */	b __ptmf_test
/* 80A722C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A722C8  41 82 00 18 */	beq lbl_80A722E0
/* 80A722CC  7F C3 F3 78 */	mr r3, r30
/* 80A722D0  38 80 00 00 */	li r4, 0
/* 80A722D4  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80A722D8  4B 8E FD AC */	b __ptmf_scall
/* 80A722DC  60 00 00 00 */	nop 
lbl_80A722E0:
/* 80A722E0  38 60 00 01 */	li r3, 1
/* 80A722E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A722E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A722EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A722F0  7C 08 03 A6 */	mtlr r0
/* 80A722F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A722F8  4E 80 00 20 */	blr 
