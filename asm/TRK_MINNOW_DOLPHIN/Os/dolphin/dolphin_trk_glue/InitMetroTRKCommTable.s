lbl_80371EA8:
/* 80371EA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80371EAC  7C 08 02 A6 */	mflr r0
/* 80371EB0  3C 80 80 3A */	lis r4, EndofProgramInstruction@ha
/* 80371EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371EB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80371EBC  3B E0 00 01 */	li r31, 1
/* 80371EC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80371EC4  7C 7E 1B 78 */	mr r30, r3
/* 80371EC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80371ECC  3B A4 2C 08 */	addi r29, r4, EndofProgramInstruction@l
/* 80371ED0  7F C4 F3 78 */	mr r4, r30
/* 80371ED4  38 7D 00 08 */	addi r3, r29, 8
/* 80371ED8  4C C6 31 82 */	crclr 6
/* 80371EDC  4B C9 4B E1 */	bl OSReport
/* 80371EE0  3C 60 80 45 */	lis r3, data_8044F820@ha
/* 80371EE4  38 00 00 00 */	li r0, 0
/* 80371EE8  2C 1E 00 02 */	cmpwi r30, 2
/* 80371EEC  98 03 F8 20 */	stb r0, data_8044F820@l(r3)
/* 80371EF0  40 82 00 A4 */	bne lbl_80371F94
/* 80371EF4  38 7D 00 20 */	addi r3, r29, 0x20
/* 80371EF8  4C C6 31 82 */	crclr 6
/* 80371EFC  4B C9 4B C1 */	bl OSReport
/* 80371F00  3F C0 80 45 */	lis r30, data_8044F820@ha
/* 80371F04  3D 80 80 37 */	lis r12, udp_cc_initialize@ha
/* 80371F08  3D 60 80 3D */	lis r11, gDBCommTable@ha
/* 80371F0C  3D 40 80 37 */	lis r10, udp_cc_open@ha
/* 80371F10  3D 20 80 37 */	lis r9, udp_cc_close@ha
/* 80371F14  3D 00 80 37 */	lis r8, udp_cc_read@ha
/* 80371F18  3C E0 80 37 */	lis r7, udp_cc_write@ha
/* 80371F1C  3C C0 80 37 */	lis r6, udp_cc_shutdown@ha
/* 80371F20  3C A0 80 37 */	lis r5, udp_cc_peek@ha
/* 80371F24  3C 80 80 37 */	lis r4, udp_cc_pre_continue@ha
/* 80371F28  3C 60 80 37 */	lis r3, udp_cc_post_stop@ha
/* 80371F2C  3B FE F8 20 */	addi r31, r30, data_8044F820@l
/* 80371F30  3B A0 00 01 */	li r29, 1
/* 80371F34  3B CC 23 54 */	addi r30, r12, udp_cc_initialize@l
/* 80371F38  39 8B 32 A8 */	addi r12, r11, gDBCommTable@l
/* 80371F3C  39 6A 23 44 */	addi r11, r10, udp_cc_open@l
/* 80371F40  39 49 23 3C */	addi r10, r9, udp_cc_close@l
/* 80371F44  39 28 23 34 */	addi r9, r8, udp_cc_read@l
/* 80371F48  39 07 23 2C */	addi r8, r7, udp_cc_write@l
/* 80371F4C  38 E6 23 4C */	addi r7, r6, udp_cc_shutdown@l
/* 80371F50  38 C5 23 24 */	addi r6, r5, udp_cc_peek@l
/* 80371F54  38 A4 23 1C */	addi r5, r4, udp_cc_pre_continue@l
/* 80371F58  38 83 23 14 */	addi r4, r3, udp_cc_post_stop@l
/* 80371F5C  38 00 00 00 */	li r0, 0
/* 80371F60  9B BF 00 00 */	stb r29, 0(r31)
/* 80371F64  38 60 00 00 */	li r3, 0
/* 80371F68  93 CC 00 00 */	stw r30, 0(r12)
/* 80371F6C  91 6C 00 18 */	stw r11, 0x18(r12)
/* 80371F70  91 4C 00 1C */	stw r10, 0x1c(r12)
/* 80371F74  91 2C 00 10 */	stw r9, 0x10(r12)
/* 80371F78  91 0C 00 14 */	stw r8, 0x14(r12)
/* 80371F7C  90 EC 00 08 */	stw r7, 8(r12)
/* 80371F80  90 CC 00 0C */	stw r6, 0xc(r12)
/* 80371F84  90 AC 00 20 */	stw r5, 0x20(r12)
/* 80371F88  90 8C 00 24 */	stw r4, 0x24(r12)
/* 80371F8C  90 0C 00 04 */	stw r0, 4(r12)
/* 80371F90  48 00 01 68 */	b lbl_803720F8
lbl_80371F94:
/* 80371F94  2C 1E 00 01 */	cmpwi r30, 1
/* 80371F98  40 82 00 98 */	bne lbl_80372030
/* 80371F9C  38 7D 00 38 */	addi r3, r29, 0x38
/* 80371FA0  4C C6 31 82 */	crclr 6
/* 80371FA4  4B C9 4B 19 */	bl OSReport
/* 80371FA8  48 00 18 05 */	bl Hu_IsStub
/* 80371FAC  3F E0 80 37 */	lis r31, gdev_cc_initialize@ha
/* 80371FB0  3D 80 80 37 */	lis r12, gdev_cc_open@ha
/* 80371FB4  3B FF 2B CC */	addi r31, r31, gdev_cc_initialize@l
/* 80371FB8  3F C0 80 3D */	lis r30, gDBCommTable@ha
/* 80371FBC  3D 60 80 37 */	lis r11, gdev_cc_close@ha
/* 80371FC0  3D 40 80 37 */	lis r10, gdev_cc_read@ha
/* 80371FC4  3D 20 80 37 */	lis r9, gdev_cc_write@ha
/* 80371FC8  3D 00 80 37 */	lis r8, gdev_cc_shutdown@ha
/* 80371FCC  3C E0 80 37 */	lis r7, gdev_cc_peek@ha
/* 80371FD0  3C C0 80 37 */	lis r6, gdev_cc_pre_continue@ha
/* 80371FD4  3C A0 80 37 */	lis r5, gdev_cc_post_stop@ha
/* 80371FD8  3C 80 80 37 */	lis r4, gdev_cc_initinterrupts@ha
/* 80371FDC  97 FE 32 A8 */	stwu r31, gDBCommTable@l(r30)
/* 80371FE0  39 8C 2B A0 */	addi r12, r12, gdev_cc_open@l
/* 80371FE4  39 6B 2B 98 */	addi r11, r11, gdev_cc_close@l
/* 80371FE8  39 4A 2A A4 */	addi r10, r10, gdev_cc_read@l
/* 80371FEC  39 29 29 E4 */	addi r9, r9, gdev_cc_write@l
/* 80371FF0  39 08 2B C4 */	addi r8, r8, gdev_cc_shutdown@l
/* 80371FF4  38 E7 29 2C */	addi r7, r7, gdev_cc_peek@l
/* 80371FF8  38 C6 29 C0 */	addi r6, r6, gdev_cc_pre_continue@l
/* 80371FFC  38 A5 29 9C */	addi r5, r5, gdev_cc_post_stop@l
/* 80372000  38 04 29 08 */	addi r0, r4, gdev_cc_initinterrupts@l
/* 80372004  91 9E 00 18 */	stw r12, 0x18(r30)
/* 80372008  7C 7F 1B 78 */	mr r31, r3
/* 8037200C  91 7E 00 1C */	stw r11, 0x1c(r30)
/* 80372010  91 5E 00 10 */	stw r10, 0x10(r30)
/* 80372014  91 3E 00 14 */	stw r9, 0x14(r30)
/* 80372018  91 1E 00 08 */	stw r8, 8(r30)
/* 8037201C  90 FE 00 0C */	stw r7, 0xc(r30)
/* 80372020  90 DE 00 20 */	stw r6, 0x20(r30)
/* 80372024  90 BE 00 24 */	stw r5, 0x24(r30)
/* 80372028  90 1E 00 04 */	stw r0, 4(r30)
/* 8037202C  48 00 00 C8 */	b lbl_803720F4
lbl_80372030:
/* 80372030  2C 1E 00 00 */	cmpwi r30, 0
/* 80372034  40 82 00 98 */	bne lbl_803720CC
/* 80372038  38 7D 00 5C */	addi r3, r29, 0x5c
/* 8037203C  4C C6 31 82 */	crclr 6
/* 80372040  4B C9 4A 7D */	bl OSReport
/* 80372044  48 00 0C E1 */	bl AMC_IsStub
/* 80372048  3F E0 80 37 */	lis r31, ddh_cc_initialize@ha
/* 8037204C  3D 80 80 37 */	lis r12, ddh_cc_open@ha
/* 80372050  3B FF 26 18 */	addi r31, r31, ddh_cc_initialize@l
/* 80372054  3F C0 80 3D */	lis r30, gDBCommTable@ha
/* 80372058  3D 60 80 37 */	lis r11, ddh_cc_close@ha
/* 8037205C  3D 40 80 37 */	lis r10, ddh_cc_read@ha
/* 80372060  3D 20 80 37 */	lis r9, ddh_cc_write@ha
/* 80372064  3D 00 80 37 */	lis r8, ddh_cc_shutdown@ha
/* 80372068  3C E0 80 37 */	lis r7, ddh_cc_peek@ha
/* 8037206C  3C C0 80 37 */	lis r6, ddh_cc_pre_continue@ha
/* 80372070  3C A0 80 37 */	lis r5, ddh_cc_post_stop@ha
/* 80372074  3C 80 80 37 */	lis r4, ddh_cc_initinterrupts@ha
/* 80372078  97 FE 32 A8 */	stwu r31, gDBCommTable@l(r30)
/* 8037207C  39 8C 25 EC */	addi r12, r12, ddh_cc_open@l
/* 80372080  39 6B 25 E4 */	addi r11, r11, ddh_cc_close@l
/* 80372084  39 4A 24 F8 */	addi r10, r10, ddh_cc_read@l
/* 80372088  39 29 24 38 */	addi r9, r9, ddh_cc_write@l
/* 8037208C  39 08 26 10 */	addi r8, r8, ddh_cc_shutdown@l
/* 80372090  38 E7 23 80 */	addi r7, r7, ddh_cc_peek@l
/* 80372094  38 C6 24 14 */	addi r6, r6, ddh_cc_pre_continue@l
/* 80372098  38 A5 23 F0 */	addi r5, r5, ddh_cc_post_stop@l
/* 8037209C  38 04 23 5C */	addi r0, r4, ddh_cc_initinterrupts@l
/* 803720A0  91 9E 00 18 */	stw r12, 0x18(r30)
/* 803720A4  7C 7F 1B 78 */	mr r31, r3
/* 803720A8  91 7E 00 1C */	stw r11, 0x1c(r30)
/* 803720AC  91 5E 00 10 */	stw r10, 0x10(r30)
/* 803720B0  91 3E 00 14 */	stw r9, 0x14(r30)
/* 803720B4  91 1E 00 08 */	stw r8, 8(r30)
/* 803720B8  90 FE 00 0C */	stw r7, 0xc(r30)
/* 803720BC  90 DE 00 20 */	stw r6, 0x20(r30)
/* 803720C0  90 BE 00 24 */	stw r5, 0x24(r30)
/* 803720C4  90 1E 00 04 */	stw r0, 4(r30)
/* 803720C8  48 00 00 2C */	b lbl_803720F4
lbl_803720CC:
/* 803720CC  7F C4 F3 78 */	mr r4, r30
/* 803720D0  38 7D 00 80 */	addi r3, r29, 0x80
/* 803720D4  4C C6 31 82 */	crclr 6
/* 803720D8  4B C9 49 E5 */	bl OSReport
/* 803720DC  38 7D 00 AC */	addi r3, r29, 0xac
/* 803720E0  4C C6 31 82 */	crclr 6
/* 803720E4  4B C9 49 D9 */	bl OSReport
/* 803720E8  38 7D 00 DC */	addi r3, r29, 0xdc
/* 803720EC  4C C6 31 82 */	crclr 6
/* 803720F0  4B C9 49 CD */	bl OSReport
lbl_803720F4:
/* 803720F4  7F E3 FB 78 */	mr r3, r31
lbl_803720F8:
/* 803720F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803720FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80372100  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80372104  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80372108  7C 08 03 A6 */	mtlr r0
/* 8037210C  38 21 00 20 */	addi r1, r1, 0x20
/* 80372110  4E 80 00 20 */	blr 
