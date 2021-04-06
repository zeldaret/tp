lbl_80A2D734:
/* 80A2D734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2D738  7C 08 02 A6 */	mflr r0
/* 80A2D73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2D740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2D744  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2D748  7C 7E 1B 78 */	mr r30, r3
/* 80A2D74C  7C 9F 23 78 */	mr r31, r4
/* 80A2D750  38 00 00 03 */	li r0, 3
/* 80A2D754  B0 03 0E 2A */	sth r0, 0xe2a(r3)
/* 80A2D758  38 7E 17 20 */	addi r3, r30, 0x1720
/* 80A2D75C  4B 93 48 BD */	bl __ptmf_test
/* 80A2D760  2C 03 00 00 */	cmpwi r3, 0
/* 80A2D764  41 82 00 18 */	beq lbl_80A2D77C
/* 80A2D768  7F C3 F3 78 */	mr r3, r30
/* 80A2D76C  38 80 00 00 */	li r4, 0
/* 80A2D770  39 9E 17 20 */	addi r12, r30, 0x1720
/* 80A2D774  4B 93 49 11 */	bl __ptmf_scall
/* 80A2D778  60 00 00 00 */	nop 
lbl_80A2D77C:
/* 80A2D77C  38 00 00 00 */	li r0, 0
/* 80A2D780  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
/* 80A2D784  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A2D788  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A2D78C  90 7E 17 20 */	stw r3, 0x1720(r30)
/* 80A2D790  90 1E 17 24 */	stw r0, 0x1724(r30)
/* 80A2D794  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A2D798  90 1E 17 28 */	stw r0, 0x1728(r30)
/* 80A2D79C  38 7E 17 20 */	addi r3, r30, 0x1720
/* 80A2D7A0  4B 93 48 79 */	bl __ptmf_test
/* 80A2D7A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2D7A8  41 82 00 18 */	beq lbl_80A2D7C0
/* 80A2D7AC  7F C3 F3 78 */	mr r3, r30
/* 80A2D7B0  38 80 00 00 */	li r4, 0
/* 80A2D7B4  39 9E 17 20 */	addi r12, r30, 0x1720
/* 80A2D7B8  4B 93 48 CD */	bl __ptmf_scall
/* 80A2D7BC  60 00 00 00 */	nop 
lbl_80A2D7C0:
/* 80A2D7C0  38 60 00 01 */	li r3, 1
/* 80A2D7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2D7C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2D7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2D7D0  7C 08 03 A6 */	mtlr r0
/* 80A2D7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2D7D8  4E 80 00 20 */	blr 
