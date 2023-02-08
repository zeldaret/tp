lbl_80CE6E68:
/* 80CE6E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE6E6C  7C 08 02 A6 */	mflr r0
/* 80CE6E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE6E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE6E78  4B 67 B3 59 */	bl _savegpr_26
/* 80CE6E7C  7C 7F 1B 78 */	mr r31, r3
/* 80CE6E80  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE6E84  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE6E88  40 82 01 50 */	bne lbl_80CE6FD8
/* 80CE6E8C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CE6E90  41 82 01 3C */	beq lbl_80CE6FCC
/* 80CE6E94  7C 1E 03 78 */	mr r30, r0
/* 80CE6E98  4B 47 75 61 */	bl __ct__14daObj_SSBase_cFv
/* 80CE6E9C  3C 60 80 CF */	lis r3, __vt__14daObj_SSItem_c@ha /* 0x80CE8064@ha */
/* 80CE6EA0  38 03 80 64 */	addi r0, r3, __vt__14daObj_SSItem_c@l /* 0x80CE8064@l */
/* 80CE6EA4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CE6EA8  3B 7E 05 84 */	addi r27, r30, 0x584
/* 80CE6EAC  7F 63 DB 78 */	mr r3, r27
/* 80CE6EB0  4B 38 F1 F1 */	bl __ct__9dBgS_AcchFv
/* 80CE6EB4  3C 60 80 CF */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CE8004@ha */
/* 80CE6EB8  38 63 80 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CE8004@l */
/* 80CE6EBC  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80CE6EC0  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE6EC4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80CE6EC8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE6ECC  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80CE6ED0  38 7B 00 14 */	addi r3, r27, 0x14
/* 80CE6ED4  4B 39 1F 95 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CE6ED8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CE6EDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CE6EE0  90 1E 07 74 */	stw r0, 0x774(r30)
/* 80CE6EE4  38 7E 07 78 */	addi r3, r30, 0x778
/* 80CE6EE8  4B 39 C8 79 */	bl __ct__10dCcD_GSttsFv
/* 80CE6EEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CE6EF0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CE6EF4  90 7E 07 74 */	stw r3, 0x774(r30)
/* 80CE6EF8  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE6EFC  90 1E 07 78 */	stw r0, 0x778(r30)
/* 80CE6F00  38 7E 07 98 */	addi r3, r30, 0x798
/* 80CE6F04  4B 38 EF A9 */	bl __ct__12dBgS_AcchCirFv
/* 80CE6F08  3B 5E 07 D8 */	addi r26, r30, 0x7d8
/* 80CE6F0C  7F 43 D3 78 */	mr r3, r26
/* 80CE6F10  4B 39 CB 19 */	bl __ct__12dCcD_GObjInfFv
/* 80CE6F14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CE6F18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CE6F1C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE6F20  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha /* 0x80CE804C@ha */
/* 80CE6F24  38 03 80 4C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CE804C@l */
/* 80CE6F28  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CE6F2C  3C 60 80 CF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CE8058@ha */
/* 80CE6F30  38 03 80 58 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CE8058@l */
/* 80CE6F34  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CE6F38  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CE6F3C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CE6F40  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80CE6F44  3B A3 00 58 */	addi r29, r3, 0x58
/* 80CE6F48  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CE6F4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CE6F50  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CE6F54  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80CE6F58  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80CE6F5C  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CE6F60  3B 63 00 84 */	addi r27, r3, 0x84
/* 80CE6F64  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CE6F68  3B 5E 09 14 */	addi r26, r30, 0x914
/* 80CE6F6C  7F 43 D3 78 */	mr r3, r26
/* 80CE6F70  4B 39 CA B9 */	bl __ct__12dCcD_GObjInfFv
/* 80CE6F74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CE6F78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CE6F7C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE6F80  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha /* 0x80CE804C@ha */
/* 80CE6F84  38 03 80 4C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CE804C@l */
/* 80CE6F88  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CE6F8C  3C 60 80 CF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CE8058@ha */
/* 80CE6F90  38 03 80 58 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CE8058@l */
/* 80CE6F94  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CE6F98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CE6F9C  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CE6FA0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CE6FA4  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CE6FA8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CE6FAC  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CE6FB0  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80CE6FB4  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CE6FB8  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CE6FBC  38 7E 0A 50 */	addi r3, r30, 0xa50
/* 80CE6FC0  4B 58 0C 5D */	bl __ct__11cBgS_GndChkFv
/* 80CE6FC4  38 7E 0A 98 */	addi r3, r30, 0xa98
/* 80CE6FC8  4B 56 2F 39 */	bl __ct__10dMsgFlow_cFv
lbl_80CE6FCC:
/* 80CE6FCC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CE6FD0  60 00 00 08 */	ori r0, r0, 8
/* 80CE6FD4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CE6FD8:
/* 80CE6FD8  7F E3 FB 78 */	mr r3, r31
/* 80CE6FDC  48 00 08 75 */	bl getTypeFromParam__14daObj_SSItem_cFv
/* 80CE6FE0  98 7F 0B 0E */	stb r3, 0xb0e(r31)
/* 80CE6FE4  7F E3 FB 78 */	mr r3, r31
/* 80CE6FE8  48 00 08 B5 */	bl getFlowNodeNum__14daObj_SSItem_cFv
/* 80CE6FEC  B0 7F 05 72 */	sth r3, 0x572(r31)
/* 80CE6FF0  7F E3 FB 78 */	mr r3, r31
/* 80CE6FF4  48 00 08 E1 */	bl getValue__14daObj_SSItem_cFv
/* 80CE6FF8  B0 7F 05 74 */	sth r3, 0x574(r31)
/* 80CE6FFC  38 00 00 00 */	li r0, 0
/* 80CE7000  90 1F 0A FC */	stw r0, 0xafc(r31)
/* 80CE7004  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CE7008  D0 1F 0A F0 */	stfs f0, 0xaf0(r31)
/* 80CE700C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CE7010  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 80CE7014  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CE7018  D0 1F 0A F8 */	stfs f0, 0xaf8(r31)
/* 80CE701C  38 00 FF FF */	li r0, -1
/* 80CE7020  90 1F 0B 04 */	stw r0, 0xb04(r31)
/* 80CE7024  88 1F 0B 0E */	lbz r0, 0xb0e(r31)
/* 80CE7028  28 00 00 02 */	cmplwi r0, 2
/* 80CE702C  40 82 00 38 */	bne lbl_80CE7064
/* 80CE7030  38 60 02 F8 */	li r3, 0x2f8
/* 80CE7034  3C 80 10 00 */	lis r4, 0x1000 /* 0x10000319@ha */
/* 80CE7038  38 84 03 19 */	addi r4, r4, 0x0319 /* 0x10000319@l */
/* 80CE703C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CE7040  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE7044  7C 06 07 74 */	extsb r6, r0
/* 80CE7048  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 80CE704C  39 00 00 00 */	li r8, 0
/* 80CE7050  39 20 FF FF */	li r9, -1
/* 80CE7054  4B 33 2D 45 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80CE7058  90 7F 0B 04 */	stw r3, 0xb04(r31)
/* 80CE705C  38 60 00 04 */	li r3, 4
/* 80CE7060  48 00 00 54 */	b lbl_80CE70B4
lbl_80CE7064:
/* 80CE7064  7F E3 FB 78 */	mr r3, r31
/* 80CE7068  48 00 07 D1 */	bl getResName__14daObj_SSItem_cFv
/* 80CE706C  7C 64 1B 78 */	mr r4, r3
/* 80CE7070  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CE7074  4B 34 5E 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE7078  7C 7B 1B 78 */	mr r27, r3
/* 80CE707C  2C 1B 00 04 */	cmpwi r27, 4
/* 80CE7080  40 82 00 30 */	bne lbl_80CE70B0
/* 80CE7084  7F E3 FB 78 */	mr r3, r31
/* 80CE7088  3C 80 80 CE */	lis r4, createHeapCallBack__14daObj_SSItem_cFP10fopAc_ac_c@ha /* 0x80CE7758@ha */
/* 80CE708C  38 84 77 58 */	addi r4, r4, createHeapCallBack__14daObj_SSItem_cFP10fopAc_ac_c@l /* 0x80CE7758@l */
/* 80CE7090  38 A0 0E B0 */	li r5, 0xeb0
/* 80CE7094  4B 33 34 1D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CE7098  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE709C  40 82 00 0C */	bne lbl_80CE70A8
/* 80CE70A0  38 60 00 05 */	li r3, 5
/* 80CE70A4  48 00 00 10 */	b lbl_80CE70B4
lbl_80CE70A8:
/* 80CE70A8  7F E3 FB 78 */	mr r3, r31
/* 80CE70AC  48 00 08 A5 */	bl initialize__14daObj_SSItem_cFv
lbl_80CE70B0:
/* 80CE70B0  7F 63 DB 78 */	mr r3, r27
lbl_80CE70B4:
/* 80CE70B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE70B8  4B 67 B1 65 */	bl _restgpr_26
/* 80CE70BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE70C0  7C 08 03 A6 */	mtlr r0
/* 80CE70C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE70C8  4E 80 00 20 */	blr 
