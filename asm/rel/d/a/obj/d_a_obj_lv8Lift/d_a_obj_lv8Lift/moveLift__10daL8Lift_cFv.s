lbl_80C88E34:
/* 80C88E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C88E38  7C 08 02 A6 */	mflr r0
/* 80C88E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C88E40  39 61 00 20 */	addi r11, r1, 0x20
/* 80C88E44  4B 6D 93 99 */	bl _savegpr_29
/* 80C88E48  7C 7E 1B 78 */	mr r30, r3
/* 80C88E4C  3C 60 80 C9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C8A004@ha */
/* 80C88E50  3B E3 A0 04 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C8A004@l */
/* 80C88E54  88 1E 05 C6 */	lbz r0, 0x5c6(r30)
/* 80C88E58  28 00 00 FF */	cmplwi r0, 0xff
/* 80C88E5C  41 82 02 44 */	beq lbl_80C890A0
/* 80C88E60  3C 60 80 C9 */	lis r3, data_80C8A208@ha /* 0x80C8A208@ha */
/* 80C88E64  38 83 A2 08 */	addi r4, r3, data_80C8A208@l /* 0x80C8A208@l */
/* 80C88E68  88 04 00 00 */	lbz r0, 0(r4)
/* 80C88E6C  7C 00 07 75 */	extsb. r0, r0
/* 80C88E70  40 82 01 00 */	bne lbl_80C88F70
/* 80C88E74  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C88E78  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C88E7C  90 7F 00 98 */	stw r3, 0x98(r31)
/* 80C88E80  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 80C88E84  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C88E88  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80C88E8C  38 7F 00 98 */	addi r3, r31, 0x98
/* 80C88E90  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 80C88E94  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C88E98  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80C88E9C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80C88EA0  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C88EA4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80C88EA8  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 80C88EAC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C88EB0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80C88EB4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80C88EB8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C88EBC  90 03 00 20 */	stw r0, 0x20(r3)
/* 80C88EC0  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 80C88EC4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C88EC8  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80C88ECC  90 03 00 28 */	stw r0, 0x28(r3)
/* 80C88ED0  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C88ED4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80C88ED8  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 80C88EDC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C88EE0  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80C88EE4  90 03 00 34 */	stw r0, 0x34(r3)
/* 80C88EE8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C88EEC  90 03 00 38 */	stw r0, 0x38(r3)
/* 80C88EF0  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 80C88EF4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80C88EF8  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80C88EFC  90 03 00 40 */	stw r0, 0x40(r3)
/* 80C88F00  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80C88F04  90 03 00 44 */	stw r0, 0x44(r3)
/* 80C88F08  80 BF 00 68 */	lwz r5, 0x68(r31)
/* 80C88F0C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80C88F10  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80C88F14  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80C88F18  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80C88F1C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80C88F20  80 BF 00 74 */	lwz r5, 0x74(r31)
/* 80C88F24  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80C88F28  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80C88F2C  90 03 00 58 */	stw r0, 0x58(r3)
/* 80C88F30  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80C88F34  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80C88F38  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 80C88F3C  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80C88F40  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80C88F44  90 03 00 64 */	stw r0, 0x64(r3)
/* 80C88F48  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80C88F4C  90 03 00 68 */	stw r0, 0x68(r3)
/* 80C88F50  80 BF 00 8C */	lwz r5, 0x8c(r31)
/* 80C88F54  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80C88F58  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80C88F5C  90 03 00 70 */	stw r0, 0x70(r3)
/* 80C88F60  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 80C88F64  90 03 00 74 */	stw r0, 0x74(r3)
/* 80C88F68  38 00 00 01 */	li r0, 1
/* 80C88F6C  98 04 00 00 */	stb r0, 0(r4)
lbl_80C88F70:
/* 80C88F70  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C88F74  28 00 00 FF */	cmplwi r0, 0xff
/* 80C88F78  41 82 01 0C */	beq lbl_80C89084
/* 80C88F7C  88 7E 08 0A */	lbz r3, 0x80a(r30)
/* 80C88F80  88 1E 08 0B */	lbz r0, 0x80b(r30)
/* 80C88F84  7C 03 00 40 */	cmplw r3, r0
/* 80C88F88  41 82 00 38 */	beq lbl_80C88FC0
/* 80C88F8C  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C88F90  28 00 00 00 */	cmplwi r0, 0
/* 80C88F94  41 82 00 18 */	beq lbl_80C88FAC
/* 80C88F98  28 03 00 00 */	cmplwi r3, 0
/* 80C88F9C  40 82 00 10 */	bne lbl_80C88FAC
/* 80C88FA0  88 7E 08 0C */	lbz r3, 0x80c(r30)
/* 80C88FA4  38 03 00 01 */	addi r0, r3, 1
/* 80C88FA8  98 1E 08 0C */	stb r0, 0x80c(r30)
lbl_80C88FAC:
/* 80C88FAC  88 1E 08 0A */	lbz r0, 0x80a(r30)
/* 80C88FB0  28 00 00 01 */	cmplwi r0, 1
/* 80C88FB4  40 82 00 0C */	bne lbl_80C88FC0
/* 80C88FB8  38 00 00 00 */	li r0, 0
/* 80C88FBC  98 1E 08 0C */	stb r0, 0x80c(r30)
lbl_80C88FC0:
/* 80C88FC0  88 7E 08 0C */	lbz r3, 0x80c(r30)
/* 80C88FC4  28 03 00 00 */	cmplwi r3, 0
/* 80C88FC8  41 82 00 34 */	beq lbl_80C88FFC
/* 80C88FCC  88 1E 08 0A */	lbz r0, 0x80a(r30)
/* 80C88FD0  28 00 00 00 */	cmplwi r0, 0
/* 80C88FD4  40 82 00 28 */	bne lbl_80C88FFC
/* 80C88FD8  38 03 00 01 */	addi r0, r3, 1
/* 80C88FDC  98 1E 08 0C */	stb r0, 0x80c(r30)
/* 80C88FE0  88 1E 08 0C */	lbz r0, 0x80c(r30)
/* 80C88FE4  28 00 00 03 */	cmplwi r0, 3
/* 80C88FE8  40 82 00 14 */	bne lbl_80C88FFC
/* 80C88FEC  7F C3 F3 78 */	mr r3, r30
/* 80C88FF0  48 00 08 85 */	bl init_modeStop__10daL8Lift_cFv
/* 80C88FF4  38 00 00 00 */	li r0, 0
/* 80C88FF8  98 1E 08 0C */	stb r0, 0x80c(r30)
lbl_80C88FFC:
/* 80C88FFC  8B BE 05 EA */	lbz r29, 0x5ea(r30)
/* 80C89000  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C89004  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80C89008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8900C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89010  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C89014  7C 05 07 74 */	extsb r5, r0
/* 80C89018  4B 3A C3 49 */	bl isSwitch__10dSv_info_cCFii
/* 80C8901C  98 7E 05 EA */	stb r3, 0x5ea(r30)
/* 80C89020  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C89024  7C 1D 00 40 */	cmplw r29, r0
/* 80C89028  41 82 00 54 */	beq lbl_80C8907C
/* 80C8902C  28 00 00 00 */	cmplwi r0, 0
/* 80C89030  41 82 00 44 */	beq lbl_80C89074
/* 80C89034  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80C89038  28 00 00 07 */	cmplwi r0, 7
/* 80C8903C  40 82 00 2C */	bne lbl_80C89068
/* 80C89040  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C89044  28 04 00 00 */	cmplwi r4, 0
/* 80C89048  41 82 00 14 */	beq lbl_80C8905C
/* 80C8904C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C89050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89054  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C89058  4B 3E B1 F9 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8905C:
/* 80C8905C  7F C3 F3 78 */	mr r3, r30
/* 80C89060  48 00 09 71 */	bl init_modeInitSet__10daL8Lift_cFv
/* 80C89064  48 00 00 18 */	b lbl_80C8907C
lbl_80C89068:
/* 80C89068  7F C3 F3 78 */	mr r3, r30
/* 80C8906C  48 00 07 05 */	bl init_modeOnAnm__10daL8Lift_cFv
/* 80C89070  48 00 00 0C */	b lbl_80C8907C
lbl_80C89074:
/* 80C89074  7F C3 F3 78 */	mr r3, r30
/* 80C89078  48 00 07 FD */	bl init_modeStop__10daL8Lift_cFv
lbl_80C8907C:
/* 80C8907C  88 1E 08 0A */	lbz r0, 0x80a(r30)
/* 80C89080  98 1E 08 0B */	stb r0, 0x80b(r30)
lbl_80C89084:
/* 80C89084  7F C3 F3 78 */	mr r3, r30
/* 80C89088  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80C8908C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C89090  39 9F 00 98 */	addi r12, r31, 0x98
/* 80C89094  7D 8C 02 14 */	add r12, r12, r0
/* 80C89098  4B 6D 8F ED */	bl __ptmf_scall
/* 80C8909C  60 00 00 00 */	nop 
lbl_80C890A0:
/* 80C890A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C890A4  4B 6D 91 85 */	bl _restgpr_29
/* 80C890A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C890AC  7C 08 03 A6 */	mtlr r0
/* 80C890B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C890B4  4E 80 00 20 */	blr 
