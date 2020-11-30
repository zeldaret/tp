.include "macros.inc"

.section .text, "ax" # 80078d64


.global dBgS_PolyPassChk
dBgS_PolyPassChk:
/* 80078D64 00075CA4  3C 80 80 3B */	lis r4, lbl_803ABA44@ha
/* 80078D68 00075CA8  38 04 BA 44 */	addi r0, r4, lbl_803ABA44@l
/* 80078D6C 00075CAC  90 03 00 00 */	stw r0, 0(r3)
/* 80078D70 00075CB0  3C 80 80 3B */	lis r4, lbl_803ABA38@ha
/* 80078D74 00075CB4  38 04 BA 38 */	addi r0, r4, lbl_803ABA38@l
/* 80078D78 00075CB8  90 03 00 00 */	stw r0, 0(r3)
/* 80078D7C 00075CBC  38 00 00 00 */	li r0, 0
/* 80078D80 00075CC0  98 03 00 04 */	stb r0, 4(r3)
/* 80078D84 00075CC4  98 03 00 05 */	stb r0, 5(r3)
/* 80078D88 00075CC8  98 03 00 06 */	stb r0, 6(r3)
/* 80078D8C 00075CCC  98 03 00 07 */	stb r0, 7(r3)
/* 80078D90 00075CD0  98 03 00 08 */	stb r0, 8(r3)
/* 80078D94 00075CD4  98 03 00 09 */	stb r0, 9(r3)
/* 80078D98 00075CD8  98 03 00 0A */	stb r0, 0xa(r3)
/* 80078D9C 00075CDC  98 03 00 0B */	stb r0, 0xb(r3)
/* 80078DA0 00075CE0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80078DA4 00075CE4  98 03 00 0D */	stb r0, 0xd(r3)
/* 80078DA8 00075CE8  98 03 00 0E */	stb r0, 0xe(r3)
/* 80078DAC 00075CEC  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_dtor
dBgS_PolyPassChk_NS_dtor:
/* 80078DB0 00075CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078DB4 00075CF4  7C 08 02 A6 */	mflr r0
/* 80078DB8 00075CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078DBC 00075CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078DC0 00075D00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80078DC4 00075D04  41 82 00 30 */	beq lbl_80078DF4
/* 80078DC8 00075D08  3C 60 80 3B */	lis r3, lbl_803ABA38@ha
/* 80078DCC 00075D0C  38 03 BA 38 */	addi r0, r3, lbl_803ABA38@l
/* 80078DD0 00075D10  90 1F 00 00 */	stw r0, 0(r31)
/* 80078DD4 00075D14  41 82 00 10 */	beq lbl_80078DE4
/* 80078DD8 00075D18  3C 60 80 3B */	lis r3, lbl_803ABA44@ha
/* 80078DDC 00075D1C  38 03 BA 44 */	addi r0, r3, lbl_803ABA44@l
/* 80078DE0 00075D20  90 1F 00 00 */	stw r0, 0(r31)
lbl_80078DE4:
/* 80078DE4 00075D24  7C 80 07 35 */	extsh. r0, r4
/* 80078DE8 00075D28  40 81 00 0C */	ble lbl_80078DF4
/* 80078DEC 00075D2C  7F E3 FB 78 */	mr r3, r31
/* 80078DF0 00075D30  48 25 5F 4D */	bl __dl__FPv
lbl_80078DF4:
/* 80078DF4 00075D34  7F E3 FB 78 */	mr r3, r31
/* 80078DF8 00075D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078DFC 00075D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078E00 00075D40  7C 08 03 A6 */	mtlr r0
/* 80078E04 00075D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80078E08 00075D48  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetPassChkInfo
dBgS_PolyPassChk_NS_SetPassChkInfo:
/* 80078E0C 00075D4C  88 04 00 04 */	lbz r0, 4(r4)
/* 80078E10 00075D50  98 03 00 04 */	stb r0, 4(r3)
/* 80078E14 00075D54  88 04 00 05 */	lbz r0, 5(r4)
/* 80078E18 00075D58  98 03 00 05 */	stb r0, 5(r3)
/* 80078E1C 00075D5C  88 04 00 06 */	lbz r0, 6(r4)
/* 80078E20 00075D60  98 03 00 06 */	stb r0, 6(r3)
/* 80078E24 00075D64  88 04 00 07 */	lbz r0, 7(r4)
/* 80078E28 00075D68  98 03 00 07 */	stb r0, 7(r3)
/* 80078E2C 00075D6C  88 04 00 08 */	lbz r0, 8(r4)
/* 80078E30 00075D70  98 03 00 08 */	stb r0, 8(r3)
/* 80078E34 00075D74  88 04 00 09 */	lbz r0, 9(r4)
/* 80078E38 00075D78  98 03 00 09 */	stb r0, 9(r3)
/* 80078E3C 00075D7C  88 04 00 0A */	lbz r0, 0xa(r4)
/* 80078E40 00075D80  98 03 00 0A */	stb r0, 0xa(r3)
/* 80078E44 00075D84  88 04 00 0B */	lbz r0, 0xb(r4)
/* 80078E48 00075D88  98 03 00 0B */	stb r0, 0xb(r3)
/* 80078E4C 00075D8C  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80078E50 00075D90  98 03 00 0C */	stb r0, 0xc(r3)
/* 80078E54 00075D94  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80078E58 00075D98  98 03 00 0D */	stb r0, 0xd(r3)
/* 80078E5C 00075D9C  88 04 00 0E */	lbz r0, 0xe(r4)
/* 80078E60 00075DA0  98 03 00 0E */	stb r0, 0xe(r3)
/* 80078E64 00075DA4  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetObj
dBgS_PolyPassChk_NS_SetObj:
/* 80078E68 00075DA8  38 00 00 01 */	li r0, 1
/* 80078E6C 00075DAC  98 03 00 04 */	stb r0, 4(r3)
/* 80078E70 00075DB0  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ClrObj
dBgS_PolyPassChk_NS_ClrObj:
/* 80078E74 00075DB4  38 00 00 00 */	li r0, 0
/* 80078E78 00075DB8  98 03 00 04 */	stb r0, 4(r3)
/* 80078E7C 00075DBC  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetCam
dBgS_PolyPassChk_NS_SetCam:
/* 80078E80 00075DC0  38 00 00 01 */	li r0, 1
/* 80078E84 00075DC4  98 03 00 05 */	stb r0, 5(r3)
/* 80078E88 00075DC8  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ClrCam
dBgS_PolyPassChk_NS_ClrCam:
/* 80078E8C 00075DCC  38 00 00 00 */	li r0, 0
/* 80078E90 00075DD0  98 03 00 05 */	stb r0, 5(r3)
/* 80078E94 00075DD4  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetLink
dBgS_PolyPassChk_NS_SetLink:
/* 80078E98 00075DD8  38 00 00 01 */	li r0, 1
/* 80078E9C 00075DDC  98 03 00 06 */	stb r0, 6(r3)
/* 80078EA0 00075DE0  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ClrLink
dBgS_PolyPassChk_NS_ClrLink:
/* 80078EA4 00075DE4  38 00 00 00 */	li r0, 0
/* 80078EA8 00075DE8  98 03 00 06 */	stb r0, 6(r3)
/* 80078EAC 00075DEC  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetArrow
dBgS_PolyPassChk_NS_SetArrow:
/* 80078EB0 00075DF0  38 00 00 01 */	li r0, 1
/* 80078EB4 00075DF4  98 03 00 07 */	stb r0, 7(r3)
/* 80078EB8 00075DF8  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetBomb
dBgS_PolyPassChk_NS_SetBomb:
/* 80078EBC 00075DFC  38 00 00 01 */	li r0, 1
/* 80078EC0 00075E00  98 03 00 08 */	stb r0, 8(r3)
/* 80078EC4 00075E04  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ClrBomb
dBgS_PolyPassChk_NS_ClrBomb:
/* 80078EC8 00075E08  38 00 00 00 */	li r0, 0
/* 80078ECC 00075E0C  98 03 00 08 */	stb r0, 8(r3)
/* 80078ED0 00075E10  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetBoomerang
dBgS_PolyPassChk_NS_SetBoomerang:
/* 80078ED4 00075E14  38 00 00 01 */	li r0, 1
/* 80078ED8 00075E18  98 03 00 09 */	stb r0, 9(r3)
/* 80078EDC 00075E1C  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetRope
dBgS_PolyPassChk_NS_SetRope:
/* 80078EE0 00075E20  38 00 00 01 */	li r0, 1
/* 80078EE4 00075E24  98 03 00 0A */	stb r0, 0xa(r3)
/* 80078EE8 00075E28  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetUnderwaterRoof
dBgS_PolyPassChk_NS_SetUnderwaterRoof:
/* 80078EEC 00075E2C  38 00 00 01 */	li r0, 1
/* 80078EF0 00075E30  98 03 00 0B */	stb r0, 0xb(r3)
/* 80078EF4 00075E34  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetHorse
dBgS_PolyPassChk_NS_SetHorse:
/* 80078EF8 00075E38  38 00 00 01 */	li r0, 1
/* 80078EFC 00075E3C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80078F00 00075E40  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ChkNoHorse
dBgS_PolyPassChk_NS_ChkNoHorse:
/* 80078F04 00075E44  88 03 00 04 */	lbz r0, 4(r3)
/* 80078F08 00075E48  28 00 00 00 */	cmplwi r0, 0
/* 80078F0C 00075E4C  40 82 00 58 */	bne lbl_80078F64
/* 80078F10 00075E50  88 03 00 05 */	lbz r0, 5(r3)
/* 80078F14 00075E54  28 00 00 00 */	cmplwi r0, 0
/* 80078F18 00075E58  40 82 00 4C */	bne lbl_80078F64
/* 80078F1C 00075E5C  88 03 00 06 */	lbz r0, 6(r3)
/* 80078F20 00075E60  28 00 00 00 */	cmplwi r0, 0
/* 80078F24 00075E64  40 82 00 40 */	bne lbl_80078F64
/* 80078F28 00075E68  88 03 00 07 */	lbz r0, 7(r3)
/* 80078F2C 00075E6C  28 00 00 00 */	cmplwi r0, 0
/* 80078F30 00075E70  40 82 00 34 */	bne lbl_80078F64
/* 80078F34 00075E74  88 03 00 08 */	lbz r0, 8(r3)
/* 80078F38 00075E78  28 00 00 00 */	cmplwi r0, 0
/* 80078F3C 00075E7C  40 82 00 28 */	bne lbl_80078F64
/* 80078F40 00075E80  88 03 00 09 */	lbz r0, 9(r3)
/* 80078F44 00075E84  28 00 00 00 */	cmplwi r0, 0
/* 80078F48 00075E88  40 82 00 1C */	bne lbl_80078F64
/* 80078F4C 00075E8C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80078F50 00075E90  28 00 00 00 */	cmplwi r0, 0
/* 80078F54 00075E94  40 82 00 10 */	bne lbl_80078F64
/* 80078F58 00075E98  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80078F5C 00075E9C  28 00 00 00 */	cmplwi r0, 0
/* 80078F60 00075EA0  41 82 00 0C */	beq lbl_80078F6C
lbl_80078F64:
/* 80078F64 00075EA4  38 60 00 01 */	li r3, 1
/* 80078F68 00075EA8  4E 80 00 20 */	blr 
lbl_80078F6C:
/* 80078F6C 00075EAC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80078F70 00075EB0  7C 00 00 34 */	cntlzw r0, r0
/* 80078F74 00075EB4  54 03 D9 7E */	srwi r3, r0, 5
/* 80078F78 00075EB8  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetStatue
dBgS_PolyPassChk_NS_SetStatue:
/* 80078F7C 00075EBC  38 00 00 01 */	li r0, 1
/* 80078F80 00075EC0  98 03 00 0D */	stb r0, 0xd(r3)
/* 80078F84 00075EC4  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_ClrStatue
dBgS_PolyPassChk_NS_ClrStatue:
/* 80078F88 00075EC8  38 00 00 00 */	li r0, 0
/* 80078F8C 00075ECC  98 03 00 0D */	stb r0, 0xd(r3)
/* 80078F90 00075ED0  4E 80 00 20 */	blr 

.global dBgS_PolyPassChk_NS_SetIronBall
dBgS_PolyPassChk_NS_SetIronBall:
/* 80078F94 00075ED4  38 00 00 01 */	li r0, 1
/* 80078F98 00075ED8  98 03 00 0E */	stb r0, 0xe(r3)
/* 80078F9C 00075EDC  4E 80 00 20 */	blr 
/* 80078FA0 00075EE0  38 00 00 00 */	li r0, 0
/* 80078FA4 00075EE4  98 03 00 0E */	stb r0, 0xe(r3)
/* 80078FA8 00075EE8  4E 80 00 20 */	blr 
/* 80078FAC 00075EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078FB0 00075EF0  7C 08 02 A6 */	mflr r0
/* 80078FB4 00075EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078FB8 00075EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078FBC 00075EFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80078FC0 00075F00  41 82 00 1C */	beq lbl_80078FDC
/* 80078FC4 00075F04  3C A0 80 3B */	lis r5, lbl_803ABA44@ha
/* 80078FC8 00075F08  38 05 BA 44 */	addi r0, r5, lbl_803ABA44@l
/* 80078FCC 00075F0C  90 1F 00 00 */	stw r0, 0(r31)
/* 80078FD0 00075F10  7C 80 07 35 */	extsh. r0, r4
/* 80078FD4 00075F14  40 81 00 08 */	ble lbl_80078FDC
/* 80078FD8 00075F18  48 25 5D 65 */	bl __dl__FPv
lbl_80078FDC:
/* 80078FDC 00075F1C  7F E3 FB 78 */	mr r3, r31
/* 80078FE0 00075F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078FE4 00075F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078FE8 00075F28  7C 08 03 A6 */	mtlr r0
/* 80078FEC 00075F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078FF0 00075F30  4E 80 00 20 */	blr 

