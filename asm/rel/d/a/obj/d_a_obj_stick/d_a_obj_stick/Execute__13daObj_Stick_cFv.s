lbl_80599934:
/* 80599934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599938  7C 08 02 A6 */	mflr r0
/* 8059993C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599944  7C 7F 1B 78 */	mr r31, r3
/* 80599948  38 7F 05 78 */	addi r3, r31, 0x578
/* 8059994C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80599950  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80599954  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80599958  4B AD D1 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8059995C  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80599960  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 80599964  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80599968  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 8059996C  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80599970  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 80599974  88 1F 06 60 */	lbz r0, 0x660(r31)
/* 80599978  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 8059997C  A0 1F 06 68 */	lhz r0, 0x668(r31)
/* 80599980  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
/* 80599984  A0 1F 06 6A */	lhz r0, 0x66a(r31)
/* 80599988  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 8059998C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80599990  90 1F 07 E4 */	stw r0, 0x7e4(r31)
/* 80599994  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80599998  90 1F 07 E8 */	stw r0, 0x7e8(r31)
/* 8059999C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 805999A0  D0 1F 07 F0 */	stfs f0, 0x7f0(r31)
/* 805999A4  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 805999A8  D0 1F 07 F4 */	stfs f0, 0x7f4(r31)
/* 805999AC  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 805999B0  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 805999B4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805999B8  90 1F 07 FC */	stw r0, 0x7fc(r31)
/* 805999BC  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 805999C0  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805999C4  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 805999C8  90 1F 08 04 */	stw r0, 0x804(r31)
/* 805999CC  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 805999D0  D0 1F 09 40 */	stfs f0, 0x940(r31)
/* 805999D4  3C 60 80 5A */	lis r3, lit_3922@ha /* 0x80599E5C@ha */
/* 805999D8  C0 23 9E 5C */	lfs f1, lit_3922@l(r3)  /* 0x80599E5C@l */
/* 805999DC  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 805999E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805999E4  41 82 00 14 */	beq lbl_805999F8
/* 805999E8  7F E3 FB 78 */	mr r3, r31
/* 805999EC  48 00 01 A1 */	bl setEnvTevColor__13daObj_Stick_cFv
/* 805999F0  7F E3 FB 78 */	mr r3, r31
/* 805999F4  48 00 01 F5 */	bl setRoomNo__13daObj_Stick_cFv
lbl_805999F8:
/* 805999F8  7F E3 FB 78 */	mr r3, r31
/* 805999FC  48 00 02 2D */	bl setMtx__13daObj_Stick_cFv
/* 80599A00  38 7F 08 08 */	addi r3, r31, 0x808
/* 80599A04  81 9F 08 44 */	lwz r12, 0x844(r31)
/* 80599A08  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80599A0C  7D 89 03 A6 */	mtctr r12
/* 80599A10  4E 80 04 21 */	bctrl 
/* 80599A14  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80599A18  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80599A1C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80599A20  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80599A24  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80599A28  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80599A2C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80599A30  3C 60 80 5A */	lis r3, m__19daObj_Stick_Param_c@ha /* 0x80599E3C@ha */
/* 80599A34  C0 03 9E 3C */	lfs f0, m__19daObj_Stick_Param_c@l(r3)  /* 0x80599E3C@l */
/* 80599A38  EC 01 00 2A */	fadds f0, f1, f0
/* 80599A3C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80599A40  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80599A44  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80599A48  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80599A4C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80599A50  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80599A54  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80599A58  38 00 00 00 */	li r0, 0
/* 80599A5C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80599A60  38 60 00 01 */	li r3, 1
/* 80599A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599A6C  7C 08 03 A6 */	mtlr r0
/* 80599A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80599A74  4E 80 00 20 */	blr 
