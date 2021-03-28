lbl_809F12F0:
/* 809F12F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F12F4  7C 08 02 A6 */	mflr r0
/* 809F12F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F12FC  39 61 00 20 */	addi r11, r1, 0x20
/* 809F1300  4B 97 0E D8 */	b _savegpr_28
/* 809F1304  7C 7F 1B 78 */	mr r31, r3
/* 809F1308  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809F130C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809F1310  40 82 01 40 */	bne lbl_809F1450
/* 809F1314  7F E0 FB 79 */	or. r0, r31, r31
/* 809F1318  41 82 01 2C */	beq lbl_809F1444
/* 809F131C  7C 1D 03 78 */	mr r29, r0
/* 809F1320  7C 1E 03 78 */	mr r30, r0
/* 809F1324  4B 62 78 40 */	b __ct__10fopAc_ac_cFv
/* 809F1328  3C 60 80 9F */	lis r3, __vt__10daNpcCd2_c@ha
/* 809F132C  38 03 2F A0 */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 809F1330  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809F1334  38 7E 05 94 */	addi r3, r30, 0x594
/* 809F1338  4B 8C F8 D8 */	b __ct__17Z2CreatureCitizenFv
/* 809F133C  3B 9E 06 38 */	addi r28, r30, 0x638
/* 809F1340  7F 83 E3 78 */	mr r3, r28
/* 809F1344  4B 68 4D 5C */	b __ct__9dBgS_AcchFv
/* 809F1348  3C 60 80 9F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809F134C  38 63 2F 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809F1350  90 7C 00 10 */	stw r3, 0x10(r28)
/* 809F1354  38 03 00 0C */	addi r0, r3, 0xc
/* 809F1358  90 1C 00 14 */	stw r0, 0x14(r28)
/* 809F135C  38 03 00 18 */	addi r0, r3, 0x18
/* 809F1360  90 1C 00 24 */	stw r0, 0x24(r28)
/* 809F1364  38 7C 00 14 */	addi r3, r28, 0x14
/* 809F1368  4B 68 7B 00 */	b SetObj__16dBgS_PolyPassChkFv
/* 809F136C  38 7E 08 10 */	addi r3, r30, 0x810
/* 809F1370  4B 68 4B 3C */	b __ct__12dBgS_AcchCirFv
/* 809F1374  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809F1378  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809F137C  90 1E 08 68 */	stw r0, 0x868(r30)
/* 809F1380  38 7E 08 6C */	addi r3, r30, 0x86c
/* 809F1384  4B 69 23 DC */	b __ct__10dCcD_GSttsFv
/* 809F1388  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809F138C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809F1390  90 7E 08 68 */	stw r3, 0x868(r30)
/* 809F1394  38 03 00 20 */	addi r0, r3, 0x20
/* 809F1398  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809F139C  3B 9E 08 8C */	addi r28, r30, 0x88c
/* 809F13A0  7F 83 E3 78 */	mr r3, r28
/* 809F13A4  4B 69 26 84 */	b __ct__12dCcD_GObjInfFv
/* 809F13A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F13AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F13B0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809F13B4  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809F13B8  38 03 2F 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F13BC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 809F13C0  3C 60 80 9F */	lis r3, __vt__8cM3dGCyl@ha
/* 809F13C4  38 03 2F 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809F13C8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809F13CC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809F13D0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809F13D4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 809F13D8  38 03 00 58 */	addi r0, r3, 0x58
/* 809F13DC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809F13E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809F13E4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809F13E8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 809F13EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F13F0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809F13F4  38 03 00 84 */	addi r0, r3, 0x84
/* 809F13F8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809F13FC  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 809F1400  4B 85 FF 14 */	b __ct__16dNpcLib_lookat_cFv
/* 809F1404  3C 60 80 9F */	lis r3, __vt__12daNpcGuard_c@ha
/* 809F1408  38 03 2F 58 */	addi r0, r3, __vt__12daNpcGuard_c@l
/* 809F140C  90 1D 05 68 */	stw r0, 0x568(r29)
/* 809F1410  3C 60 80 9F */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809F1414  38 03 2F 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809F1418  90 1D 0B 04 */	stw r0, 0xb04(r29)
/* 809F141C  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 809F1420  4B 75 42 B4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809F1424  38 7D 0B 14 */	addi r3, r29, 0xb14
/* 809F1428  3C 80 80 9F */	lis r4, __ct__8dCcD_SphFv@ha
/* 809F142C  38 84 1E 74 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 809F1430  3C A0 80 9F */	lis r5, __dt__8dCcD_SphFv@ha
/* 809F1434  38 A5 1D A8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 809F1438  38 C0 01 38 */	li r6, 0x138
/* 809F143C  38 E0 00 02 */	li r7, 2
/* 809F1440  4B 97 09 20 */	b __construct_array
lbl_809F1444:
/* 809F1444  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 809F1448  60 00 00 08 */	ori r0, r0, 8
/* 809F144C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_809F1450:
/* 809F1450  38 60 00 00 */	li r3, 0
/* 809F1454  38 80 00 02 */	li r4, 2
/* 809F1458  48 00 10 B5 */	bl func_809F250C
/* 809F145C  90 7F 0A 98 */	stw r3, 0xa98(r31)
/* 809F1460  38 00 00 02 */	li r0, 2
/* 809F1464  90 1F 0D 84 */	stw r0, 0xd84(r31)
/* 809F1468  7F E3 FB 78 */	mr r3, r31
/* 809F146C  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1470  80 BF 0D 84 */	lwz r5, 0xd84(r31)
/* 809F1474  4B 76 77 44 */	b loadResrc__10daNpcCd2_cFii
/* 809F1478  7C 7D 1B 78 */	mr r29, r3
/* 809F147C  2C 1D 00 04 */	cmpwi r29, 4
/* 809F1480  40 82 00 30 */	bne lbl_809F14B0
/* 809F1484  7F E3 FB 78 */	mr r3, r31
/* 809F1488  3C 80 80 9F */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 809F148C  38 84 FD 58 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 809F1490  38 A0 22 20 */	li r5, 0x2220
/* 809F1494  4B 62 90 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809F1498  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F149C  40 82 00 0C */	bne lbl_809F14A8
/* 809F14A0  38 60 00 05 */	li r3, 5
/* 809F14A4  48 00 00 10 */	b lbl_809F14B4
lbl_809F14A8:
/* 809F14A8  7F E3 FB 78 */	mr r3, r31
/* 809F14AC  48 00 00 21 */	bl create_init__12daNpcGuard_cFv
lbl_809F14B0:
/* 809F14B0  7F A3 EB 78 */	mr r3, r29
lbl_809F14B4:
/* 809F14B4  39 61 00 20 */	addi r11, r1, 0x20
/* 809F14B8  4B 97 0D 6C */	b _restgpr_28
/* 809F14BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F14C0  7C 08 03 A6 */	mtlr r0
/* 809F14C4  38 21 00 20 */	addi r1, r1, 0x20
/* 809F14C8  4E 80 00 20 */	blr 
