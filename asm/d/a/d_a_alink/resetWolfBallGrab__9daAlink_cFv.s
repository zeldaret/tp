lbl_80138F18:
/* 80138F18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80138F1C  7C 08 02 A6 */	mflr r0
/* 80138F20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80138F24  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80138F28  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80138F2C  7C 7F 1B 78 */	mr r31, r3
/* 80138F30  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 80138F34  28 00 01 0A */	cmplwi r0, 0x10a
/* 80138F38  40 82 00 F8 */	bne lbl_80139030
/* 80138F3C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000802BE@ha */
/* 80138F40  38 84 02 BE */	addi r4, r4, 0x02BE /* 0x000802BE@l */
/* 80138F44  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80138F48  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80138F4C  7D 89 03 A6 */	mtctr r12
/* 80138F50  4E 80 04 21 */	bctrl 
/* 80138F54  7F E3 FB 78 */	mr r3, r31
/* 80138F58  38 80 00 00 */	li r4, 0
/* 80138F5C  38 A0 00 00 */	li r5, 0
/* 80138F60  4B F8 83 7D */	bl deleteEquipItem__9daAlink_cFii
/* 80138F64  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80138F68  28 00 02 DA */	cmplwi r0, 0x2da
/* 80138F6C  40 82 00 14 */	bne lbl_80138F80
/* 80138F70  7F E3 FB 78 */	mr r3, r31
/* 80138F74  38 80 00 02 */	li r4, 2
/* 80138F78  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80138F7C  4B F7 47 A9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80138F80:
/* 80138F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80138F84  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80138F88  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80138F8C  38 80 00 00 */	li r4, 0
/* 80138F90  90 81 00 08 */	stw r4, 8(r1)
/* 80138F94  38 00 FF FF */	li r0, -1
/* 80138F98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80138F9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80138FA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80138FA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80138FA8  38 80 00 00 */	li r4, 0
/* 80138FAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086CE@ha */
/* 80138FB0  38 A5 86 CE */	addi r5, r5, 0x86CE /* 0x000086CE@l */
/* 80138FB4  38 DF 37 E0 */	addi r6, r31, 0x37e0
/* 80138FB8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80138FBC  39 00 00 00 */	li r8, 0
/* 80138FC0  39 20 00 00 */	li r9, 0
/* 80138FC4  39 40 00 FF */	li r10, 0xff
/* 80138FC8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80138FCC  4B F1 3A C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80138FD0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80138FD4  38 80 00 00 */	li r4, 0
/* 80138FD8  90 81 00 08 */	stw r4, 8(r1)
/* 80138FDC  38 00 FF FF */	li r0, -1
/* 80138FE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80138FE4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80138FE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80138FEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80138FF0  38 80 00 00 */	li r4, 0
/* 80138FF4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086CF@ha */
/* 80138FF8  38 A5 86 CF */	addi r5, r5, 0x86CF /* 0x000086CF@l */
/* 80138FFC  38 DF 37 E0 */	addi r6, r31, 0x37e0
/* 80139000  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80139004  39 00 00 00 */	li r8, 0
/* 80139008  39 20 00 00 */	li r9, 0
/* 8013900C  39 40 00 FF */	li r10, 0xff
/* 80139010  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80139014  4B F1 3A 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80139018  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8013901C  64 00 20 00 */	oris r0, r0, 0x2000
/* 80139020  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80139024  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80139028  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 8013902C  90 1F 05 7C */	stw r0, 0x57c(r31)
lbl_80139030:
/* 80139030  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80139034  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80139038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013903C  7C 08 03 A6 */	mtlr r0
/* 80139040  38 21 00 30 */	addi r1, r1, 0x30
/* 80139044  4E 80 00 20 */	blr 
