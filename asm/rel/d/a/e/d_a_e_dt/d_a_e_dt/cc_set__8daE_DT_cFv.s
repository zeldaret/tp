lbl_806B4B24:
/* 806B4B24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B4B28  7C 08 02 A6 */	mflr r0
/* 806B4B2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B4B30  39 61 00 30 */	addi r11, r1, 0x30
/* 806B4B34  4B CA D6 A0 */	b _savegpr_27
/* 806B4B38  7C 7F 1B 78 */	mr r31, r3
/* 806B4B3C  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806B4B40  3B C3 5C D4 */	addi r30, r3, lit_3792@l
/* 806B4B44  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B4B48  83 A3 00 04 */	lwz r29, 4(r3)
/* 806B4B4C  88 1F 07 70 */	lbz r0, 0x770(r31)
/* 806B4B50  2C 00 00 02 */	cmpwi r0, 2
/* 806B4B54  41 82 00 BC */	beq lbl_806B4C10
/* 806B4B58  40 80 00 14 */	bge lbl_806B4B6C
/* 806B4B5C  2C 00 00 00 */	cmpwi r0, 0
/* 806B4B60  41 82 00 18 */	beq lbl_806B4B78
/* 806B4B64  40 80 00 60 */	bge lbl_806B4BC4
/* 806B4B68  48 00 00 FC */	b lbl_806B4C64
lbl_806B4B6C:
/* 806B4B6C  2C 00 00 04 */	cmpwi r0, 4
/* 806B4B70  40 80 00 F4 */	bge lbl_806B4C64
/* 806B4B74  48 00 00 D8 */	b lbl_806B4C4C
lbl_806B4B78:
/* 806B4B78  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4B7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4B80  38 63 02 10 */	addi r3, r3, 0x210
/* 806B4B84  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4B88  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4B8C  4B C9 19 24 */	b PSMTXCopy
/* 806B4B90  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B4B94  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 806B4B98  FC 60 08 90 */	fmr f3, f1
/* 806B4B9C  4B 95 82 00 */	b transM__14mDoMtx_stack_cFfff
/* 806B4BA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4BA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4BA8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B4BAC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806B4BB0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B4BB4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806B4BB8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B4BBC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806B4BC0  48 00 00 A4 */	b lbl_806B4C64
lbl_806B4BC4:
/* 806B4BC4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4BC8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4BCC  38 63 05 70 */	addi r3, r3, 0x570
/* 806B4BD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4BD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4BD8  4B C9 18 D8 */	b PSMTXCopy
/* 806B4BDC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 806B4BE0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 806B4BE4  FC 60 10 90 */	fmr f3, f2
/* 806B4BE8  4B 95 81 B4 */	b transM__14mDoMtx_stack_cFfff
/* 806B4BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4BF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B4BF8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806B4BFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B4C00  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806B4C04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B4C08  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806B4C0C  48 00 00 58 */	b lbl_806B4C64
lbl_806B4C10:
/* 806B4C10  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4C14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4C18  38 63 05 40 */	addi r3, r3, 0x540
/* 806B4C1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4C20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4C24  4B C9 18 8C */	b PSMTXCopy
/* 806B4C28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4C2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B4C30  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B4C34  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806B4C38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B4C3C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806B4C40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B4C44  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806B4C48  48 00 00 1C */	b lbl_806B4C64
lbl_806B4C4C:
/* 806B4C4C  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 806B4C50  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806B4C54  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 806B4C58  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806B4C5C  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 806B4C60  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_806B4C64:
/* 806B4C64  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806B4C68  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806B4C6C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806B4C70  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806B4C74  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806B4C78  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806B4C7C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806B4C80  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 806B4C84  EC 01 00 2A */	fadds f0, f1, f0
/* 806B4C88  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806B4C8C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4C90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4C94  38 63 00 30 */	addi r3, r3, 0x30
/* 806B4C98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4C9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4CA0  4B C9 18 10 */	b PSMTXCopy
/* 806B4CA4  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 806B4CA8  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 806B4CAC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 806B4CB0  4B 95 80 EC */	b transM__14mDoMtx_stack_cFfff
/* 806B4CB4  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 806B4CB8  2C 00 00 05 */	cmpwi r0, 5
/* 806B4CBC  41 82 00 18 */	beq lbl_806B4CD4
/* 806B4CC0  2C 00 00 04 */	cmpwi r0, 4
/* 806B4CC4  40 82 00 3C */	bne lbl_806B4D00
/* 806B4CC8  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 806B4CCC  2C 00 00 07 */	cmpwi r0, 7
/* 806B4CD0  41 80 00 30 */	blt lbl_806B4D00
lbl_806B4CD4:
/* 806B4CD4  88 1F 07 71 */	lbz r0, 0x771(r31)
/* 806B4CD8  28 00 00 00 */	cmplwi r0, 0
/* 806B4CDC  40 82 00 14 */	bne lbl_806B4CF0
/* 806B4CE0  38 7F 0A FC */	addi r3, r31, 0xafc
/* 806B4CE4  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 806B4CE8  4B BB AA 20 */	b SetR__8cM3dGSphFf
/* 806B4CEC  48 00 00 20 */	b lbl_806B4D0C
lbl_806B4CF0:
/* 806B4CF0  38 7F 0A FC */	addi r3, r31, 0xafc
/* 806B4CF4  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 806B4CF8  4B BB AA 10 */	b SetR__8cM3dGSphFf
/* 806B4CFC  48 00 00 10 */	b lbl_806B4D0C
lbl_806B4D00:
/* 806B4D00  38 7F 0A FC */	addi r3, r31, 0xafc
/* 806B4D04  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 806B4D08  4B BB AA 00 */	b SetR__8cM3dGSphFf
lbl_806B4D0C:
/* 806B4D0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B4D10  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 806B4D14  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4D18  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4D1C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4D20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4D24  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4D28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4D2C  38 7F 0A FC */	addi r3, r31, 0xafc
/* 806B4D30  38 81 00 08 */	addi r4, r1, 8
/* 806B4D34  4B BB A9 14 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B4D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B4D40  3B 63 23 3C */	addi r27, r3, 0x233c
/* 806B4D44  7F 63 DB 78 */	mr r3, r27
/* 806B4D48  38 9F 09 D8 */	addi r4, r31, 0x9d8
/* 806B4D4C  4B BA FE 5C */	b Set__4cCcSFP8cCcD_Obj
/* 806B4D50  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4D54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4D58  38 63 00 30 */	addi r3, r3, 0x30
/* 806B4D5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4D60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4D64  4B C9 17 4C */	b PSMTXCopy
/* 806B4D68  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 806B4D6C  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 806B4D70  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 806B4D74  4B 95 80 28 */	b transM__14mDoMtx_stack_cFfff
/* 806B4D78  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 806B4D7C  2C 00 00 05 */	cmpwi r0, 5
/* 806B4D80  41 82 00 18 */	beq lbl_806B4D98
/* 806B4D84  2C 00 00 04 */	cmpwi r0, 4
/* 806B4D88  40 82 00 5C */	bne lbl_806B4DE4
/* 806B4D8C  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 806B4D90  2C 00 00 07 */	cmpwi r0, 7
/* 806B4D94  41 80 00 50 */	blt lbl_806B4DE4
lbl_806B4D98:
/* 806B4D98  88 1F 07 71 */	lbz r0, 0x771(r31)
/* 806B4D9C  28 00 00 00 */	cmplwi r0, 0
/* 806B4DA0  40 82 00 24 */	bne lbl_806B4DC4
/* 806B4DA4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806B4DA8  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 806B4DAC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 806B4DB0  4B 95 7F EC */	b transM__14mDoMtx_stack_cFfff
/* 806B4DB4  38 7F 0C 34 */	addi r3, r31, 0xc34
/* 806B4DB8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 806B4DBC  4B BB A9 4C */	b SetR__8cM3dGSphFf
/* 806B4DC0  48 00 00 40 */	b lbl_806B4E00
lbl_806B4DC4:
/* 806B4DC4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806B4DC8  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 806B4DCC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 806B4DD0  4B 95 7F CC */	b transM__14mDoMtx_stack_cFfff
/* 806B4DD4  38 7F 0C 34 */	addi r3, r31, 0xc34
/* 806B4DD8  C0 3E 01 E4 */	lfs f1, 0x1e4(r30)
/* 806B4DDC  4B BB A9 2C */	b SetR__8cM3dGSphFf
/* 806B4DE0  48 00 00 20 */	b lbl_806B4E00
lbl_806B4DE4:
/* 806B4DE4  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 806B4DE8  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806B4DEC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 806B4DF0  4B 95 7F AC */	b transM__14mDoMtx_stack_cFfff
/* 806B4DF4  38 7F 0C 34 */	addi r3, r31, 0xc34
/* 806B4DF8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 806B4DFC  4B BB A9 0C */	b SetR__8cM3dGSphFf
lbl_806B4E00:
/* 806B4E00  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4E04  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4E08  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4E0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4E10  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4E14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4E18  38 7F 0C 34 */	addi r3, r31, 0xc34
/* 806B4E1C  38 81 00 08 */	addi r4, r1, 8
/* 806B4E20  4B BB A8 28 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4E24  7F 63 DB 78 */	mr r3, r27
/* 806B4E28  38 9F 0B 10 */	addi r4, r31, 0xb10
/* 806B4E2C  4B BA FD 7C */	b Set__4cCcSFP8cCcD_Obj
/* 806B4E30  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4E34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4E38  38 63 05 70 */	addi r3, r3, 0x570
/* 806B4E3C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4E40  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4E44  4B C9 16 6C */	b PSMTXCopy
/* 806B4E48  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 806B4E4C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 806B4E50  FC 60 10 90 */	fmr f3, f2
/* 806B4E54  4B 95 7F 48 */	b transM__14mDoMtx_stack_cFfff
/* 806B4E58  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4E5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4E60  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4E64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4E68  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4E6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4E70  38 7F 0F DC */	addi r3, r31, 0xfdc
/* 806B4E74  38 81 00 08 */	addi r4, r1, 8
/* 806B4E78  4B BB A7 D0 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4E7C  38 7F 0F DC */	addi r3, r31, 0xfdc
/* 806B4E80  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806B4E84  4B BB A8 84 */	b SetR__8cM3dGSphFf
/* 806B4E88  7F 63 DB 78 */	mr r3, r27
/* 806B4E8C  38 9F 0E B8 */	addi r4, r31, 0xeb8
/* 806B4E90  4B BA FD 18 */	b Set__4cCcSFP8cCcD_Obj
/* 806B4E94  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4E98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4E9C  38 63 05 70 */	addi r3, r3, 0x570
/* 806B4EA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4EA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4EA8  4B C9 16 08 */	b PSMTXCopy
/* 806B4EAC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806B4EB0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 806B4EB4  FC 60 10 90 */	fmr f3, f2
/* 806B4EB8  4B 95 7E E4 */	b transM__14mDoMtx_stack_cFfff
/* 806B4EBC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4EC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4EC4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4EC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4ECC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4ED0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4ED4  38 7F 11 14 */	addi r3, r31, 0x1114
/* 806B4ED8  38 81 00 08 */	addi r4, r1, 8
/* 806B4EDC  4B BB A7 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4EE0  38 7F 11 14 */	addi r3, r31, 0x1114
/* 806B4EE4  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806B4EE8  4B BB A8 20 */	b SetR__8cM3dGSphFf
/* 806B4EEC  7F 63 DB 78 */	mr r3, r27
/* 806B4EF0  38 9F 0F F0 */	addi r4, r31, 0xff0
/* 806B4EF4  4B BA FC B4 */	b Set__4cCcSFP8cCcD_Obj
/* 806B4EF8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4EFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4F00  38 63 06 30 */	addi r3, r3, 0x630
/* 806B4F04  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4F08  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4F0C  4B C9 15 A4 */	b PSMTXCopy
/* 806B4F10  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806B4F14  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 806B4F18  FC 60 10 90 */	fmr f3, f2
/* 806B4F1C  4B 95 7E 80 */	b transM__14mDoMtx_stack_cFfff
/* 806B4F20  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4F24  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4F28  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4F2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4F30  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4F34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4F38  38 7F 0D 6C */	addi r3, r31, 0xd6c
/* 806B4F3C  38 81 00 08 */	addi r4, r1, 8
/* 806B4F40  4B BB A7 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4F44  38 7F 0D 6C */	addi r3, r31, 0xd6c
/* 806B4F48  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806B4F4C  4B BB A7 BC */	b SetR__8cM3dGSphFf
/* 806B4F50  7F 63 DB 78 */	mr r3, r27
/* 806B4F54  38 9F 0C 48 */	addi r4, r31, 0xc48
/* 806B4F58  4B BA FC 50 */	b Set__4cCcSFP8cCcD_Obj
/* 806B4F5C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806B4F60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B4F64  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 806B4F68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B4F6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B4F70  4B C9 15 40 */	b PSMTXCopy
/* 806B4F74  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806B4F78  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 806B4F7C  FC 60 10 90 */	fmr f3, f2
/* 806B4F80  4B 95 7E 1C */	b transM__14mDoMtx_stack_cFfff
/* 806B4F84  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B4F88  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B4F8C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B4F90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4F94  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B4F98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4F9C  38 7F 0E A4 */	addi r3, r31, 0xea4
/* 806B4FA0  38 81 00 08 */	addi r4, r1, 8
/* 806B4FA4  4B BB A6 A4 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B4FA8  38 7F 0E A4 */	addi r3, r31, 0xea4
/* 806B4FAC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806B4FB0  4B BB A7 58 */	b SetR__8cM3dGSphFf
/* 806B4FB4  7F 63 DB 78 */	mr r3, r27
/* 806B4FB8  38 9F 0D 80 */	addi r4, r31, 0xd80
/* 806B4FBC  4B BA FB EC */	b Set__4cCcSFP8cCcD_Obj
/* 806B4FC0  39 61 00 30 */	addi r11, r1, 0x30
/* 806B4FC4  4B CA D2 5C */	b _restgpr_27
/* 806B4FC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B4FCC  7C 08 03 A6 */	mtlr r0
/* 806B4FD0  38 21 00 30 */	addi r1, r1, 0x30
/* 806B4FD4  4E 80 00 20 */	blr 
