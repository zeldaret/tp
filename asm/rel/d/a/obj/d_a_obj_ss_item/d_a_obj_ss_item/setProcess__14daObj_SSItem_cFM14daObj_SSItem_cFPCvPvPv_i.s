lbl_80CE7B04:
/* 80CE7B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7B08  7C 08 02 A6 */	mflr r0
/* 80CE7B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE7B18  7C 7E 1B 78 */	mr r30, r3
/* 80CE7B1C  7C 9F 23 78 */	mr r31, r4
/* 80CE7B20  38 00 00 02 */	li r0, 2
/* 80CE7B24  B0 03 0B 0C */	sth r0, 0xb0c(r3)
/* 80CE7B28  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 80CE7B2C  4B 67 A4 EC */	b __ptmf_test
/* 80CE7B30  2C 03 00 00 */	cmpwi r3, 0
/* 80CE7B34  41 82 00 18 */	beq lbl_80CE7B4C
/* 80CE7B38  7F C3 F3 78 */	mr r3, r30
/* 80CE7B3C  38 80 00 00 */	li r4, 0
/* 80CE7B40  39 9E 0A E4 */	addi r12, r30, 0xae4
/* 80CE7B44  4B 67 A5 40 */	b __ptmf_scall
/* 80CE7B48  60 00 00 00 */	nop 
lbl_80CE7B4C:
/* 80CE7B4C  38 00 00 00 */	li r0, 0
/* 80CE7B50  B0 1E 0B 0C */	sth r0, 0xb0c(r30)
/* 80CE7B54  80 7F 00 00 */	lwz r3, 0(r31)
/* 80CE7B58  80 1F 00 04 */	lwz r0, 4(r31)
/* 80CE7B5C  90 7E 0A E4 */	stw r3, 0xae4(r30)
/* 80CE7B60  90 1E 0A E8 */	stw r0, 0xae8(r30)
/* 80CE7B64  80 1F 00 08 */	lwz r0, 8(r31)
/* 80CE7B68  90 1E 0A EC */	stw r0, 0xaec(r30)
/* 80CE7B6C  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 80CE7B70  4B 67 A4 A8 */	b __ptmf_test
/* 80CE7B74  2C 03 00 00 */	cmpwi r3, 0
/* 80CE7B78  41 82 00 18 */	beq lbl_80CE7B90
/* 80CE7B7C  7F C3 F3 78 */	mr r3, r30
/* 80CE7B80  38 80 00 00 */	li r4, 0
/* 80CE7B84  39 9E 0A E4 */	addi r12, r30, 0xae4
/* 80CE7B88  4B 67 A4 FC */	b __ptmf_scall
/* 80CE7B8C  60 00 00 00 */	nop 
lbl_80CE7B90:
/* 80CE7B90  38 00 00 01 */	li r0, 1
/* 80CE7B94  B0 1E 0B 0C */	sth r0, 0xb0c(r30)
/* 80CE7B98  38 60 00 01 */	li r3, 1
/* 80CE7B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE7BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7BA8  7C 08 03 A6 */	mtlr r0
/* 80CE7BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7BB0  4E 80 00 20 */	blr 
