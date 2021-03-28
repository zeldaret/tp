lbl_80A9DDCC:
/* 80A9DDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9DDD0  7C 08 02 A6 */	mflr r0
/* 80A9DDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9DDD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9DDDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9DDE0  7C 7E 1B 78 */	mr r30, r3
/* 80A9DDE4  7C 9F 23 78 */	mr r31, r4
/* 80A9DDE8  38 00 00 03 */	li r0, 3
/* 80A9DDEC  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A9DDF0  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80A9DDF4  4B 8C 42 24 */	b __ptmf_test
/* 80A9DDF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9DDFC  41 82 00 18 */	beq lbl_80A9DE14
/* 80A9DE00  7F C3 F3 78 */	mr r3, r30
/* 80A9DE04  38 80 00 00 */	li r4, 0
/* 80A9DE08  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80A9DE0C  4B 8C 42 78 */	b __ptmf_scall
/* 80A9DE10  60 00 00 00 */	nop 
lbl_80A9DE14:
/* 80A9DE14  38 00 00 00 */	li r0, 0
/* 80A9DE18  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A9DE1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A9DE20  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A9DE24  90 7E 0F C8 */	stw r3, 0xfc8(r30)
/* 80A9DE28  90 1E 0F CC */	stw r0, 0xfcc(r30)
/* 80A9DE2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A9DE30  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 80A9DE34  38 7E 0F C8 */	addi r3, r30, 0xfc8
/* 80A9DE38  4B 8C 41 E0 */	b __ptmf_test
/* 80A9DE3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9DE40  41 82 00 18 */	beq lbl_80A9DE58
/* 80A9DE44  7F C3 F3 78 */	mr r3, r30
/* 80A9DE48  38 80 00 00 */	li r4, 0
/* 80A9DE4C  39 9E 0F C8 */	addi r12, r30, 0xfc8
/* 80A9DE50  4B 8C 42 34 */	b __ptmf_scall
/* 80A9DE54  60 00 00 00 */	nop 
lbl_80A9DE58:
/* 80A9DE58  38 60 00 01 */	li r3, 1
/* 80A9DE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9DE60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A9DE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9DE68  7C 08 03 A6 */	mtlr r0
/* 80A9DE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9DE70  4E 80 00 20 */	blr 
