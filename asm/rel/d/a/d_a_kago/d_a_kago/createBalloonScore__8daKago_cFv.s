lbl_8084AF40:
/* 8084AF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084AF44  7C 08 02 A6 */	mflr r0
/* 8084AF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084AF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084AF50  7C 7F 1B 78 */	mr r31, r3
/* 8084AF54  88 03 06 E7 */	lbz r0, 0x6e7(r3)
/* 8084AF58  28 00 00 00 */	cmplwi r0, 0
/* 8084AF5C  41 82 00 40 */	beq lbl_8084AF9C
/* 8084AF60  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 8084AF64  3C 03 00 01 */	addis r0, r3, 1
/* 8084AF68  28 00 FF FF */	cmplwi r0, 0xffff
/* 8084AF6C  40 82 00 30 */	bne lbl_8084AF9C
/* 8084AF70  38 60 00 5A */	li r3, 0x5a
/* 8084AF74  38 80 00 00 */	li r4, 0
/* 8084AF78  38 A0 00 00 */	li r5, 0
/* 8084AF7C  38 C0 FF FF */	li r6, -1
/* 8084AF80  38 E0 00 00 */	li r7, 0
/* 8084AF84  39 00 00 00 */	li r8, 0
/* 8084AF88  39 20 FF FF */	li r9, -1
/* 8084AF8C  4B 7C EE 0C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8084AF90  90 7F 06 1C */	stw r3, 0x61c(r31)
/* 8084AF94  38 00 00 01 */	li r0, 1
/* 8084AF98  98 1F 06 E9 */	stb r0, 0x6e9(r31)
lbl_8084AF9C:
/* 8084AF9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084AFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084AFA4  7C 08 03 A6 */	mtlr r0
/* 8084AFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8084AFAC  4E 80 00 20 */	blr 
