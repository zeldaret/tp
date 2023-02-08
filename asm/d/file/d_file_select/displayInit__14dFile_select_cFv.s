lbl_8018CF50:
/* 8018CF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018CF54  7C 08 02 A6 */	mflr r0
/* 8018CF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018CF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018CF60  7C 7F 1B 78 */	mr r31, r3
/* 8018CF64  38 80 00 00 */	li r4, 0
/* 8018CF68  98 83 03 B1 */	stb r4, 0x3b1(r3)
/* 8018CF6C  98 83 02 70 */	stb r4, 0x270(r3)
/* 8018CF70  3C 60 80 43 */	lis r3, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018CF74  38 63 C9 EC */	addi r3, r3, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018CF78  88 03 00 0B */	lbz r0, 0xb(r3)
/* 8018CF7C  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018CF80  98 9F 00 B8 */	stb r4, 0xb8(r31)
/* 8018CF84  98 9F 01 4A */	stb r4, 0x14a(r31)
/* 8018CF88  98 9F 03 60 */	stb r4, 0x360(r31)
/* 8018CF8C  98 9F 01 08 */	stb r4, 0x108(r31)
/* 8018CF90  98 9F 02 1E */	stb r4, 0x21e(r31)
/* 8018CF94  98 9F 00 B9 */	stb r4, 0xb9(r31)
/* 8018CF98  98 9F 01 4B */	stb r4, 0x14b(r31)
/* 8018CF9C  98 9F 02 81 */	stb r4, 0x281(r31)
/* 8018CFA0  98 9F 02 83 */	stb r4, 0x283(r31)
/* 8018CFA4  38 00 00 02 */	li r0, 2
/* 8018CFA8  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 8018CFAC  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 8018CFB0  98 03 1F BE */	stb r0, 0x1fbe(r3)
/* 8018CFB4  98 9F 02 48 */	stb r4, 0x248(r31)
/* 8018CFB8  98 9F 02 4A */	stb r4, 0x24a(r31)
/* 8018CFBC  98 9F 02 49 */	stb r4, 0x249(r31)
/* 8018CFC0  98 9F 02 4B */	stb r4, 0x24b(r31)
/* 8018CFC4  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 8018CFC8  38 80 00 00 */	li r4, 0
/* 8018CFCC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CFD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CFD4  7D 89 03 A6 */	mtctr r12
/* 8018CFD8  4E 80 04 21 */	bctrl 
/* 8018CFDC  80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8018CFE0  38 80 00 00 */	li r4, 0
/* 8018CFE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CFE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CFEC  7D 89 03 A6 */	mtctr r12
/* 8018CFF0  4E 80 04 21 */	bctrl 
/* 8018CFF4  80 7F 02 38 */	lwz r3, 0x238(r31)
/* 8018CFF8  38 80 00 80 */	li r4, 0x80
/* 8018CFFC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D000  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018D004  7D 89 03 A6 */	mtctr r12
/* 8018D008  4E 80 04 21 */	bctrl 
/* 8018D00C  80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 8018D010  38 80 00 80 */	li r4, 0x80
/* 8018D014  81 83 00 00 */	lwz r12, 0(r3)
/* 8018D018  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018D01C  7D 89 03 A6 */	mtctr r12
/* 8018D020  4E 80 04 21 */	bctrl 
/* 8018D024  38 00 00 00 */	li r0, 0
/* 8018D028  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018D02C  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018D030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018D034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D038  7C 08 03 A6 */	mtlr r0
/* 8018D03C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D040  4E 80 00 20 */	blr 
