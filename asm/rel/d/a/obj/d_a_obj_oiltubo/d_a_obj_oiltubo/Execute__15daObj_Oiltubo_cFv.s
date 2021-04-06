lbl_80CA6CA0:
/* 80CA6CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA6CA4  7C 08 02 A6 */	mflr r0
/* 80CA6CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA6CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6CB0  4B 6B B5 2D */	bl _savegpr_29
/* 80CA6CB4  7C 7E 1B 78 */	mr r30, r3
/* 80CA6CB8  3C 80 80 CA */	lis r4, mCcDObjInfo__15daObj_Oiltubo_c@ha /* 0x80CA78F4@ha */
/* 80CA6CBC  3B E4 78 F4 */	addi r31, r4, mCcDObjInfo__15daObj_Oiltubo_c@l /* 0x80CA78F4@l */
/* 80CA6CC0  48 00 07 B9 */	bl chkEvent__15daObj_Oiltubo_cFv
/* 80CA6CC4  7C 7D 1B 78 */	mr r29, r3
/* 80CA6CC8  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CA6CCC  4B 36 67 5D */	bl play__14mDoExt_baseAnmFv
/* 80CA6CD0  7F C3 F3 78 */	mr r3, r30
/* 80CA6CD4  48 00 05 E9 */	bl setParam__15daObj_Oiltubo_cFv
/* 80CA6CD8  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CA6CDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA6CE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA6CE4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CA6CE8  4B 3C FD C5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CA6CEC  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 80CA6CF0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80CA6CF4  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 80CA6CF8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80CA6CFC  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80CA6D00  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 80CA6D04  88 1E 06 78 */	lbz r0, 0x678(r30)
/* 80CA6D08  98 1E 0A 68 */	stb r0, 0xa68(r30)
/* 80CA6D0C  A0 1E 06 80 */	lhz r0, 0x680(r30)
/* 80CA6D10  B0 1E 0A 70 */	sth r0, 0xa70(r30)
/* 80CA6D14  A0 1E 06 82 */	lhz r0, 0x682(r30)
/* 80CA6D18  B0 1E 0A 72 */	sth r0, 0xa72(r30)
/* 80CA6D1C  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 80CA6D20  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80CA6D24  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80CA6D28  90 1E 0A 78 */	stw r0, 0xa78(r30)
/* 80CA6D2C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80CA6D30  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80CA6D34  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80CA6D38  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80CA6D3C  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80CA6D40  D0 1E 0A 88 */	stfs f0, 0xa88(r30)
/* 80CA6D44  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 80CA6D48  90 1E 0A 8C */	stw r0, 0xa8c(r30)
/* 80CA6D4C  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80CA6D50  D0 1E 0A 90 */	stfs f0, 0xa90(r30)
/* 80CA6D54  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 80CA6D58  90 1E 0A 94 */	stw r0, 0xa94(r30)
/* 80CA6D5C  C0 1E 06 28 */	lfs f0, 0x628(r30)
/* 80CA6D60  D0 1E 0A C4 */	stfs f0, 0xac4(r30)
/* 80CA6D64  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CA6D68  C0 1E 0A C4 */	lfs f0, 0xac4(r30)
/* 80CA6D6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CA6D70  41 82 00 14 */	beq lbl_80CA6D84
/* 80CA6D74  7F C3 F3 78 */	mr r3, r30
/* 80CA6D78  48 00 05 A1 */	bl setEnvTevColor__15daObj_Oiltubo_cFv
/* 80CA6D7C  7F C3 F3 78 */	mr r3, r30
/* 80CA6D80  48 00 05 F5 */	bl setRoomNo__15daObj_Oiltubo_cFv
lbl_80CA6D84:
/* 80CA6D84  2C 1D 00 00 */	cmpwi r29, 0
/* 80CA6D88  41 82 00 28 */	beq lbl_80CA6DB0
/* 80CA6D8C  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80CA6D90  4B 6B B2 89 */	bl __ptmf_test
/* 80CA6D94  2C 03 00 00 */	cmpwi r3, 0
/* 80CA6D98  41 82 00 18 */	beq lbl_80CA6DB0
/* 80CA6D9C  7F C3 F3 78 */	mr r3, r30
/* 80CA6DA0  38 80 00 00 */	li r4, 0
/* 80CA6DA4  39 9E 0A 98 */	addi r12, r30, 0xa98
/* 80CA6DA8  4B 6B B2 DD */	bl __ptmf_scall
/* 80CA6DAC  60 00 00 00 */	nop 
lbl_80CA6DB0:
/* 80CA6DB0  7F C3 F3 78 */	mr r3, r30
/* 80CA6DB4  48 00 06 05 */	bl setMtx__15daObj_Oiltubo_cFv
/* 80CA6DB8  38 00 00 00 */	li r0, 0
/* 80CA6DBC  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80CA6DC0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CA6DC4  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CA6DC8  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80CA6DCC  38 00 00 1F */	li r0, 0x1f
/* 80CA6DD0  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80CA6DD4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CA6DD8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CA6DDC  4B 5C 84 25 */	bl SetR__8cM3dGCylFf
/* 80CA6DE0  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CA6DE4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CA6DE8  4B 5C 84 11 */	bl SetH__8cM3dGCylFf
/* 80CA6DEC  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CA6DF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA6DF4  4B 5C 83 E9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CA6DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA6DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA6E00  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80CA6E04  7F A3 EB 78 */	mr r3, r29
/* 80CA6E08  38 9E 09 20 */	addi r4, r30, 0x920
/* 80CA6E0C  4B 5B DD 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 80CA6E10  38 00 00 00 */	li r0, 0
/* 80CA6E14  90 1E 07 F4 */	stw r0, 0x7f4(r30)
/* 80CA6E18  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80CA6E1C  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CA6E20  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CA6E24  4B 5C 83 DD */	bl SetR__8cM3dGCylFf
/* 80CA6E28  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CA6E2C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CA6E30  4B 5C 83 C9 */	bl SetH__8cM3dGCylFf
/* 80CA6E34  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CA6E38  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CA6E3C  4B 5C 83 A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CA6E40  7F A3 EB 78 */	mr r3, r29
/* 80CA6E44  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 80CA6E48  4B 5B DD 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CA6E4C  7F C3 F3 78 */	mr r3, r30
/* 80CA6E50  48 00 05 E1 */	bl setAttnPos__15daObj_Oiltubo_cFv
/* 80CA6E54  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80CA6E58  4B 3D D6 09 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CA6E5C  28 03 00 00 */	cmplwi r3, 0
/* 80CA6E60  41 82 00 38 */	beq lbl_80CA6E98
/* 80CA6E64  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80CA6E68  4B 3D D6 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CA6E6C  28 03 00 00 */	cmplwi r3, 0
/* 80CA6E70  41 82 00 28 */	beq lbl_80CA6E98
/* 80CA6E74  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80CA6E78  4B 3D D7 05 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80CA6E7C  38 80 00 01 */	li r4, 1
/* 80CA6E80  4B 3D D7 31 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80CA6E84  7C 64 1B 78 */	mr r4, r3
/* 80CA6E88  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CA6E8C  38 A0 00 02 */	li r5, 2
/* 80CA6E90  38 C0 00 00 */	li r6, 0
/* 80CA6E94  4B 61 76 11 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80CA6E98:
/* 80CA6E98  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CA6E9C  7C 03 07 74 */	extsb r3, r0
/* 80CA6EA0  4B 38 61 CD */	bl dComIfGp_getReverb__Fi
/* 80CA6EA4  7C 65 1B 78 */	mr r5, r3
/* 80CA6EA8  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CA6EAC  38 80 00 00 */	li r4, 0
/* 80CA6EB0  81 9E 0A B4 */	lwz r12, 0xab4(r30)
/* 80CA6EB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CA6EB8  7D 89 03 A6 */	mtctr r12
/* 80CA6EBC  4E 80 04 21 */	bctrl 
/* 80CA6EC0  38 60 00 01 */	li r3, 1
/* 80CA6EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6EC8  4B 6B B3 61 */	bl _restgpr_29
/* 80CA6ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA6ED0  7C 08 03 A6 */	mtlr r0
/* 80CA6ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA6ED8  4E 80 00 20 */	blr 
