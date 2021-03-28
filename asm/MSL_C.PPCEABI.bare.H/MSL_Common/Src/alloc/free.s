lbl_80362B58:
/* 80362B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80362B5C  7C 08 02 A6 */	mflr r0
/* 80362B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80362B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80362B68  7C 7F 1B 78 */	mr r31, r3
/* 80362B6C  38 60 00 01 */	li r3, 1
/* 80362B70  48 00 28 F9 */	bl __begin_critical_region
/* 80362B74  88 0D 94 20 */	lbz r0, data_804519A0(r13)
/* 80362B78  28 00 00 00 */	cmplwi r0, 0
/* 80362B7C  40 82 00 20 */	bne lbl_80362B9C
/* 80362B80  3C 60 80 45 */	lis r3, protopool@ha
/* 80362B84  38 80 00 00 */	li r4, 0
/* 80362B88  38 63 D5 40 */	addi r3, r3, protopool@l
/* 80362B8C  38 A0 00 34 */	li r5, 0x34
/* 80362B90  4B CA 08 C9 */	bl memset
/* 80362B94  38 00 00 01 */	li r0, 1
/* 80362B98  98 0D 94 20 */	stb r0, data_804519A0(r13)
lbl_80362B9C:
/* 80362B9C  3C 60 80 45 */	lis r3, protopool@ha
/* 80362BA0  7F E4 FB 78 */	mr r4, r31
/* 80362BA4  38 63 D5 40 */	addi r3, r3, protopool@l
/* 80362BA8  48 00 00 21 */	bl __pool_free
/* 80362BAC  38 60 00 01 */	li r3, 1
/* 80362BB0  48 00 28 B5 */	bl __end_critical_region
/* 80362BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80362BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80362BBC  7C 08 03 A6 */	mtlr r0
/* 80362BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80362BC4  4E 80 00 20 */	blr 
