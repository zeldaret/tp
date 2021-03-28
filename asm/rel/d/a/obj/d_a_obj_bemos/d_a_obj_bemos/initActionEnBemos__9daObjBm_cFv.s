lbl_80BAF328:
/* 80BAF328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAF32C  7C 08 02 A6 */	mflr r0
/* 80BAF330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAF334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAF338  7C 7F 1B 78 */	mr r31, r3
/* 80BAF33C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80BAF340  28 03 00 00 */	cmplwi r3, 0
/* 80BAF344  41 82 00 1C */	beq lbl_80BAF360
/* 80BAF348  4B 6B 8E 8C */	b ChkUsed__9cBgW_BgIdCFv
/* 80BAF34C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAF350  41 82 00 10 */	beq lbl_80BAF360
/* 80BAF354  38 00 00 00 */	li r0, 0
/* 80BAF358  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BAF35C  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80BAF360:
/* 80BAF360  38 00 00 00 */	li r0, 0
/* 80BAF364  98 1F 0F EB */	stb r0, 0xfeb(r31)
/* 80BAF368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAF36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAF370  7C 08 03 A6 */	mtlr r0
/* 80BAF374  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAF378  4E 80 00 20 */	blr 
