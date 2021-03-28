lbl_800F4C78:
/* 800F4C78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F4C7C  7C 08 02 A6 */	mflr r0
/* 800F4C80  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F4C84  39 61 00 20 */	addi r11, r1, 0x20
/* 800F4C88  48 26 D5 55 */	bl _savegpr_29
/* 800F4C8C  7C 7D 1B 78 */	mr r29, r3
/* 800F4C90  7C 9E 23 78 */	mr r30, r4
/* 800F4C94  38 80 00 8D */	li r4, 0x8d
/* 800F4C98  4B FC D2 D5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F4C9C  28 1E 00 00 */	cmplwi r30, 0
/* 800F4CA0  40 82 00 20 */	bne lbl_800F4CC0
/* 800F4CA4  3C 60 80 0F */	lis r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@ha
/* 800F4CA8  38 63 3C D8 */	addi r3, r3, daAlink_searchCanoe__FP10fopAc_ac_cPv@l
/* 800F4CAC  38 80 00 00 */	li r4, 0
/* 800F4CB0  4B F2 4B 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800F4CB4  7C 7E 1B 78 */	mr r30, r3
/* 800F4CB8  3B E0 00 01 */	li r31, 1
/* 800F4CBC  48 00 00 08 */	b lbl_800F4CC4
lbl_800F4CC0:
/* 800F4CC0  3B E0 00 00 */	li r31, 0
lbl_800F4CC4:
/* 800F4CC4  7F A3 EB 78 */	mr r3, r29
/* 800F4CC8  38 80 00 00 */	li r4, 0
/* 800F4CCC  4B FE D8 B5 */	bl setHeavyBoots__9daAlink_cFi
/* 800F4CD0  7F A3 EB 78 */	mr r3, r29
/* 800F4CD4  38 80 00 33 */	li r4, 0x33
/* 800F4CD8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800F4CDC  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800F4CE0  38 A5 00 14 */	addi r5, r5, 0x14
/* 800F4CE4  4B FB 84 11 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800F4CE8  7F A3 EB 78 */	mr r3, r29
/* 800F4CEC  38 80 00 00 */	li r4, 0
/* 800F4CF0  38 A0 00 00 */	li r5, 0
/* 800F4CF4  4B FC C5 E9 */	bl deleteEquipItem__9daAlink_cFii
/* 800F4CF8  38 7D 28 14 */	addi r3, r29, 0x2814
/* 800F4CFC  7F C4 F3 78 */	mr r4, r30
/* 800F4D00  48 06 9F B9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800F4D04  7F A3 EB 78 */	mr r3, r29
/* 800F4D08  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F4D0C  C0 5D 05 34 */	lfs f2, 0x534(r29)
/* 800F4D10  38 80 00 00 */	li r4, 0
/* 800F4D14  4B FC 6A 5D */	bl setSpecialGravity__9daAlink_cFffi
/* 800F4D18  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4D1C  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 800F4D20  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 800F4D24  7F A3 EB 78 */	mr r3, r29
/* 800F4D28  7F C4 F3 78 */	mr r4, r30
/* 800F4D2C  4B FF F8 39 */	bl setRideCanoeBasePos__9daAlink_cFP10fopAc_ac_c
/* 800F4D30  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 800F4D34  38 63 00 24 */	addi r3, r3, 0x24
/* 800F4D38  38 9D 37 C8 */	addi r4, r29, 0x37c8
/* 800F4D3C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 800F4D40  48 25 20 2D */	bl PSMTXMultVec
/* 800F4D44  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800F4D48  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800F4D4C  7F A3 EB 78 */	mr r3, r29
/* 800F4D50  4B FF F2 75 */	bl initCanoeRide__9daAlink_cFv
/* 800F4D54  2C 1F 00 00 */	cmpwi r31, 0
/* 800F4D58  41 82 00 10 */	beq lbl_800F4D68
/* 800F4D5C  7F A3 EB 78 */	mr r3, r29
/* 800F4D60  38 80 00 02 */	li r4, 2
/* 800F4D64  48 00 04 81 */	bl procCanoeWaitInit__9daAlink_cFi
lbl_800F4D68:
/* 800F4D68  38 60 00 01 */	li r3, 1
/* 800F4D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 800F4D70  48 26 D4 B9 */	bl _restgpr_29
/* 800F4D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F4D78  7C 08 03 A6 */	mtlr r0
/* 800F4D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800F4D80  4E 80 00 20 */	blr 
