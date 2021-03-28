lbl_80B205F4:
/* 80B205F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B205F8  7C 08 02 A6 */	mflr r0
/* 80B205FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B20600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B20604  93 C1 00 08 */	stw r30, 8(r1)
/* 80B20608  7C 7E 1B 78 */	mr r30, r3
/* 80B2060C  3C 60 80 B2 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B20610  3B E3 4C 48 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80B20614  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B20618  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B2061C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B20620  80 04 00 04 */	lwz r0, 4(r4)
/* 80B20624  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80B20628  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80B2062C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B20630  90 1E 0F B0 */	stw r0, 0xfb0(r30)
/* 80B20634  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B20638  2C 00 00 00 */	cmpwi r0, 0
/* 80B2063C  41 82 00 08 */	beq lbl_80B20644
/* 80B20640  48 00 00 9C */	b lbl_80B206DC
lbl_80B20644:
/* 80B20644  88 1E 0F FF */	lbz r0, 0xfff(r30)
/* 80B20648  28 00 00 00 */	cmplwi r0, 0
/* 80B2064C  41 82 00 20 */	beq lbl_80B2066C
/* 80B20650  80 7F 08 E0 */	lwz r3, 0x8e0(r31)
/* 80B20654  80 1F 08 E4 */	lwz r0, 0x8e4(r31)
/* 80B20658  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80B2065C  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80B20660  80 1F 08 E8 */	lwz r0, 0x8e8(r31)
/* 80B20664  90 1E 0F B0 */	stw r0, 0xfb0(r30)
/* 80B20668  48 00 00 8C */	b lbl_80B206F4
lbl_80B2066C:
/* 80B2066C  88 1E 0F FE */	lbz r0, 0xffe(r30)
/* 80B20670  28 00 00 00 */	cmplwi r0, 0
/* 80B20674  40 82 00 4C */	bne lbl_80B206C0
/* 80B20678  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B2067C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B20680  28 04 00 FF */	cmplwi r4, 0xff
/* 80B20684  41 82 00 3C */	beq lbl_80B206C0
/* 80B20688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B2068C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B20690  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B20694  7C 05 07 74 */	extsb r5, r0
/* 80B20698  4B 51 4C C8 */	b isSwitch__10dSv_info_cCFii
/* 80B2069C  2C 03 00 00 */	cmpwi r3, 0
/* 80B206A0  41 82 00 20 */	beq lbl_80B206C0
/* 80B206A4  80 7F 08 EC */	lwz r3, 0x8ec(r31)
/* 80B206A8  80 1F 08 F0 */	lwz r0, 0x8f0(r31)
/* 80B206AC  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80B206B0  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80B206B4  80 1F 08 F4 */	lwz r0, 0x8f4(r31)
/* 80B206B8  90 1E 0F B0 */	stw r0, 0xfb0(r30)
/* 80B206BC  48 00 00 38 */	b lbl_80B206F4
lbl_80B206C0:
/* 80B206C0  80 7F 08 F8 */	lwz r3, 0x8f8(r31)
/* 80B206C4  80 1F 08 FC */	lwz r0, 0x8fc(r31)
/* 80B206C8  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80B206CC  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80B206D0  80 1F 09 00 */	lwz r0, 0x900(r31)
/* 80B206D4  90 1E 0F B0 */	stw r0, 0xfb0(r30)
/* 80B206D8  48 00 00 1C */	b lbl_80B206F4
lbl_80B206DC:
/* 80B206DC  80 7F 09 04 */	lwz r3, 0x904(r31)
/* 80B206E0  80 1F 09 08 */	lwz r0, 0x908(r31)
/* 80B206E4  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80B206E8  90 1E 0F AC */	stw r0, 0xfac(r30)
/* 80B206EC  80 1F 09 0C */	lwz r0, 0x90c(r31)
/* 80B206F0  90 1E 0F B0 */	stw r0, 0xfb0(r30)
lbl_80B206F4:
/* 80B206F4  38 60 00 01 */	li r3, 1
/* 80B206F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B206FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B20700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B20704  7C 08 03 A6 */	mtlr r0
/* 80B20708  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2070C  4E 80 00 20 */	blr 
