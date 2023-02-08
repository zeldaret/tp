lbl_80B47BD0:
/* 80B47BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B47BD4  7C 08 02 A6 */	mflr r0
/* 80B47BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B47BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B47BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B47BE4  7C 7E 1B 78 */	mr r30, r3
/* 80B47BE8  7C 9F 23 78 */	mr r31, r4
/* 80B47BEC  38 00 00 03 */	li r0, 3
/* 80B47BF0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B47BF4  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B47BF8  4B 81 A4 21 */	bl __ptmf_test
/* 80B47BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B47C00  41 82 00 18 */	beq lbl_80B47C18
/* 80B47C04  7F C3 F3 78 */	mr r3, r30
/* 80B47C08  38 80 00 00 */	li r4, 0
/* 80B47C0C  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B47C10  4B 81 A4 75 */	bl __ptmf_scall
/* 80B47C14  60 00 00 00 */	nop 
lbl_80B47C18:
/* 80B47C18  38 00 00 00 */	li r0, 0
/* 80B47C1C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B47C20  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B47C24  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B47C28  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80B47C2C  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80B47C30  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B47C34  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80B47C38  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B47C3C  4B 81 A3 DD */	bl __ptmf_test
/* 80B47C40  2C 03 00 00 */	cmpwi r3, 0
/* 80B47C44  41 82 00 18 */	beq lbl_80B47C5C
/* 80B47C48  7F C3 F3 78 */	mr r3, r30
/* 80B47C4C  38 80 00 00 */	li r4, 0
/* 80B47C50  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B47C54  4B 81 A4 31 */	bl __ptmf_scall
/* 80B47C58  60 00 00 00 */	nop 
lbl_80B47C5C:
/* 80B47C5C  38 60 00 01 */	li r3, 1
/* 80B47C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B47C64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B47C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B47C6C  7C 08 03 A6 */	mtlr r0
/* 80B47C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B47C74  4E 80 00 20 */	blr 
