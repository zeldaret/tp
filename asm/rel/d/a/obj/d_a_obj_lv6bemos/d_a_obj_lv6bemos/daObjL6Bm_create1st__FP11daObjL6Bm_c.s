lbl_80C7DAF0:
/* 80C7DAF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7DAF4  7C 08 02 A6 */	mflr r0
/* 80C7DAF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7DAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7DB00  4B 6E 46 DC */	b _savegpr_29
/* 80C7DB04  7C 7F 1B 78 */	mr r31, r3
/* 80C7DB08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C7DB0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C7DB10  40 82 01 48 */	bne lbl_80C7DC58
/* 80C7DB14  7F E0 FB 79 */	or. r0, r31, r31
/* 80C7DB18  41 82 01 34 */	beq lbl_80C7DC4C
/* 80C7DB1C  7C 1E 03 78 */	mr r30, r0
/* 80C7DB20  4B 3F AB 04 */	b __ct__16dBgS_MoveBgActorFv
/* 80C7DB24  3C 60 80 C8 */	lis r3, __vt__11daObjL6Bm_c@ha
/* 80C7DB28  38 03 E1 10 */	addi r0, r3, __vt__11daObjL6Bm_c@l
/* 80C7DB2C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C7DB30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C7DB34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C7DB38  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80C7DB3C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C7DB40  4B 40 5C 20 */	b __ct__10dCcD_GSttsFv
/* 80C7DB44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C7DB48  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C7DB4C  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80C7DB50  38 03 00 20 */	addi r0, r3, 0x20
/* 80C7DB54  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C7DB58  3B BE 05 E8 */	addi r29, r30, 0x5e8
/* 80C7DB5C  7F A3 EB 78 */	mr r3, r29
/* 80C7DB60  4B 40 5E C8 */	b __ct__12dCcD_GObjInfFv
/* 80C7DB64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C7DB68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C7DB6C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C7DB70  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C7DB74  38 03 E0 EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C7DB78  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C7DB7C  38 7D 01 24 */	addi r3, r29, 0x124
/* 80C7DB80  4B 5F 14 08 */	b __ct__8cM3dGCpsFv
/* 80C7DB84  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80C7DB88  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80C7DB8C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C7DB90  38 03 00 58 */	addi r0, r3, 0x58
/* 80C7DB94  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C7DB98  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80C7DB9C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80C7DBA0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C7DBA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C7DBA8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C7DBAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7DBB0  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80C7DBB4  3B BE 07 48 */	addi r29, r30, 0x748
/* 80C7DBB8  7F A3 EB 78 */	mr r3, r29
/* 80C7DBBC  4B 40 5E 6C */	b __ct__12dCcD_GObjInfFv
/* 80C7DBC0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C7DBC4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C7DBC8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C7DBCC  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C7DBD0  38 03 E0 EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C7DBD4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C7DBD8  3C 60 80 C8 */	lis r3, __vt__8cM3dGSph@ha
/* 80C7DBDC  38 03 E0 E0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C7DBE0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C7DBE4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C7DBE8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C7DBEC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C7DBF0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C7DBF4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C7DBF8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C7DBFC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C7DC00  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C7DC04  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C7DC08  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C7DC0C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7DC10  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C7DC14  3B BE 08 B8 */	addi r29, r30, 0x8b8
/* 80C7DC18  7F A3 EB 78 */	mr r3, r29
/* 80C7DC1C  4B 3F 99 60 */	b __ct__11dBgS_GndChkFv
/* 80C7DC20  3C 60 80 C8 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80C7DC24  38 63 E0 B0 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80C7DC28  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C7DC2C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C7DC30  90 1D 00 20 */	stw r0, 0x20(r29)
/* 80C7DC34  38 03 00 18 */	addi r0, r3, 0x18
/* 80C7DC38  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 80C7DC3C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C7DC40  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C7DC44  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80C7DC48  4B 3F B2 20 */	b SetObj__16dBgS_PolyPassChkFv
lbl_80C7DC4C:
/* 80C7DC4C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C7DC50  60 00 00 08 */	ori r0, r0, 8
/* 80C7DC54  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C7DC58:
/* 80C7DC58  7F E3 FB 78 */	mr r3, r31
/* 80C7DC5C  4B FF F6 9D */	bl create1st__11daObjL6Bm_cFv
/* 80C7DC60  39 61 00 20 */	addi r11, r1, 0x20
/* 80C7DC64  4B 6E 45 C4 */	b _restgpr_29
/* 80C7DC68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7DC6C  7C 08 03 A6 */	mtlr r0
/* 80C7DC70  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7DC74  4E 80 00 20 */	blr 
