lbl_80108B34:
/* 80108B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80108B38  7C 08 02 A6 */	mflr r0
/* 80108B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80108B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80108B44  48 25 96 99 */	bl _savegpr_29
/* 80108B48  7C 7E 1B 78 */	mr r30, r3
/* 80108B4C  38 7E 21 D8 */	addi r3, r30, 0x21d8
/* 80108B50  38 80 01 7E */	li r4, 0x17e
/* 80108B54  48 05 65 15 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 80108B58  7C 7D 1B 78 */	mr r29, r3
/* 80108B5C  7F C3 F3 78 */	mr r3, r30
/* 80108B60  4B F9 B1 2D */	bl setItemHeap__9daAlink_cFv
/* 80108B64  7C 7F 1B 78 */	mr r31, r3
/* 80108B68  38 7E 07 30 */	addi r3, r30, 0x730
/* 80108B6C  7F A4 EB 78 */	mr r4, r29
/* 80108B70  38 A0 00 00 */	li r5, 0
/* 80108B74  38 C0 00 02 */	li r6, 2
/* 80108B78  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80108B7C  38 E0 00 00 */	li r7, 0
/* 80108B80  39 00 FF FF */	li r8, -1
/* 80108B84  39 20 00 00 */	li r9, 0
/* 80108B88  4B F0 4C 55 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80108B8C  7F C3 F3 78 */	mr r3, r30
/* 80108B90  38 80 03 16 */	li r4, 0x316
/* 80108B94  38 A0 5C 00 */	li r5, 0x5c00
/* 80108B98  4B FB 72 B1 */	bl loadAramBmd__9daAlink_cFUsUl
/* 80108B9C  7C 64 1B 78 */	mr r4, r3
/* 80108BA0  7F C3 F3 78 */	mr r3, r30
/* 80108BA4  3C A0 00 08 */	lis r5, 8
/* 80108BA8  38 C0 00 00 */	li r6, 0
/* 80108BAC  4B F9 B1 D1 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80108BB0  90 7E 07 08 */	stw r3, 0x708(r30)
/* 80108BB4  7F C3 F3 78 */	mr r3, r30
/* 80108BB8  38 80 03 18 */	li r4, 0x318
/* 80108BBC  38 A0 38 00 */	li r5, 0x3800
/* 80108BC0  4B FB 72 89 */	bl loadAramBmd__9daAlink_cFUsUl
/* 80108BC4  7C 64 1B 78 */	mr r4, r3
/* 80108BC8  7F C3 F3 78 */	mr r3, r30
/* 80108BCC  3C A0 00 08 */	lis r5, 8
/* 80108BD0  38 C0 00 00 */	li r6, 0
/* 80108BD4  4B F9 B1 A9 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80108BD8  90 7E 07 0C */	stw r3, 0x70c(r30)
/* 80108BDC  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 80108BE0  80 83 00 04 */	lwz r4, 4(r3)
/* 80108BE4  7F C3 F3 78 */	mr r3, r30
/* 80108BE8  3C A0 00 08 */	lis r5, 8
/* 80108BEC  38 C0 00 00 */	li r6, 0
/* 80108BF0  4B F9 B1 8D */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80108BF4  90 7E 07 10 */	stw r3, 0x710(r30)
/* 80108BF8  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 80108BFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80108C00  7F C3 F3 78 */	mr r3, r30
/* 80108C04  3C A0 00 08 */	lis r5, 8
/* 80108C08  38 C0 00 00 */	li r6, 0
/* 80108C0C  4B F9 B1 71 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80108C10  90 7E 07 14 */	stw r3, 0x714(r30)
/* 80108C14  7F C3 F3 78 */	mr r3, r30
/* 80108C18  38 80 03 17 */	li r4, 0x317
/* 80108C1C  38 A0 10 00 */	li r5, 0x1000
/* 80108C20  4B FB 72 29 */	bl loadAramBmd__9daAlink_cFUsUl
/* 80108C24  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80108C28  38 60 00 10 */	li r3, 0x10
/* 80108C2C  48 1C 60 21 */	bl __nw__FUl
/* 80108C30  28 03 00 00 */	cmplwi r3, 0
/* 80108C34  41 82 00 2C */	beq lbl_80108C60
/* 80108C38  3C 80 80 3D */	lis r4, __vt__9J3DPacket@ha
/* 80108C3C  38 04 D9 7C */	addi r0, r4, __vt__9J3DPacket@l
/* 80108C40  90 03 00 00 */	stw r0, 0(r3)
/* 80108C44  38 00 00 00 */	li r0, 0
/* 80108C48  90 03 00 04 */	stw r0, 4(r3)
/* 80108C4C  90 03 00 08 */	stw r0, 8(r3)
/* 80108C50  90 03 00 0C */	stw r0, 0xc(r3)
/* 80108C54  3C 80 80 3B */	lis r4, __vt__Q29daAlink_c14hsChainShape_c@ha
/* 80108C58  38 04 35 EC */	addi r0, r4, __vt__Q29daAlink_c14hsChainShape_c@l
/* 80108C5C  90 03 00 00 */	stw r0, 0(r3)
lbl_80108C60:
/* 80108C60  90 7E 07 70 */	stw r3, 0x770(r30)
/* 80108C64  38 60 00 20 */	li r3, 0x20
/* 80108C68  48 1C 5F E5 */	bl __nw__FUl
/* 80108C6C  7C 60 1B 79 */	or. r0, r3, r3
/* 80108C70  41 82 00 0C */	beq lbl_80108C7C
/* 80108C74  48 1B 5B D1 */	bl __ct__16Z2SoundObjSimpleFv
/* 80108C78  7C 60 1B 78 */	mr r0, r3
lbl_80108C7C:
/* 80108C7C  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80108C80  38 60 00 70 */	li r3, 0x70
/* 80108C84  48 1C 5F C9 */	bl __nw__FUl
/* 80108C88  7C 60 1B 79 */	or. r0, r3, r3
/* 80108C8C  41 82 00 0C */	beq lbl_80108C98
/* 80108C90  4B F6 F2 CD */	bl __ct__14dBgS_ObjLinChkFv
/* 80108C94  7C 60 1B 78 */	mr r0, r3
lbl_80108C98:
/* 80108C98  90 1E 07 7C */	stw r0, 0x77c(r30)
/* 80108C9C  80 7E 07 7C */	lwz r3, 0x77c(r30)
/* 80108CA0  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80108CA4  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80108CA8  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80108CAC  80 7E 07 7C */	lwz r3, 0x77c(r30)
/* 80108CB0  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80108CB4  60 00 00 02 */	ori r0, r0, 2
/* 80108CB8  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80108CBC  7F C3 F3 78 */	mr r3, r30
/* 80108CC0  38 80 01 7F */	li r4, 0x17f
/* 80108CC4  38 A0 08 00 */	li r5, 0x800
/* 80108CC8  4B FB 72 3D */	bl loadAram__9daAlink_cFUsUl
/* 80108CCC  7C 64 1B 78 */	mr r4, r3
/* 80108CD0  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80108CD4  38 A0 00 00 */	li r5, 0
/* 80108CD8  38 C0 00 02 */	li r6, 2
/* 80108CDC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80108CE0  38 E0 00 00 */	li r7, 0
/* 80108CE4  39 00 FF FF */	li r8, -1
/* 80108CE8  39 20 00 00 */	li r9, 0
/* 80108CEC  4B F0 4A F1 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80108CF0  7F E3 FB 78 */	mr r3, r31
/* 80108CF4  4B F0 64 D9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80108CF8  7F C3 F3 78 */	mr r3, r30
/* 80108CFC  4B FF F9 E1 */	bl resetHookshotMode__9daAlink_cFv
/* 80108D00  80 7E 07 70 */	lwz r3, 0x770(r30)
/* 80108D04  93 C3 00 0C */	stw r30, 0xc(r3)
/* 80108D08  38 00 00 01 */	li r0, 1
/* 80108D0C  98 1E 2F 94 */	stb r0, 0x2f94(r30)
/* 80108D10  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 80108D14  28 00 00 47 */	cmplwi r0, 0x47
/* 80108D18  40 82 00 0C */	bne lbl_80108D24
/* 80108D1C  38 00 00 06 */	li r0, 6
/* 80108D20  98 1E 2F 95 */	stb r0, 0x2f95(r30)
lbl_80108D24:
/* 80108D24  38 80 00 00 */	li r4, 0
/* 80108D28  B0 9E 30 20 */	sth r4, 0x3020(r30)
/* 80108D2C  B0 9E 30 24 */	sth r4, 0x3024(r30)
/* 80108D30  98 9E 12 A3 */	stb r4, 0x12a3(r30)
/* 80108D34  80 1E 12 84 */	lwz r0, 0x1284(r30)
/* 80108D38  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80108D3C  90 1E 12 84 */	stw r0, 0x1284(r30)
/* 80108D40  98 9E 12 40 */	stb r4, 0x1240(r30)
/* 80108D44  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 80108D48  D0 1E 13 6C */	stfs f0, 0x136c(r30)
/* 80108D4C  38 00 00 08 */	li r0, 8
/* 80108D50  98 1E 12 A0 */	stb r0, 0x12a0(r30)
/* 80108D54  38 00 40 00 */	li r0, 0x4000
/* 80108D58  90 1E 12 3C */	stw r0, 0x123c(r30)
/* 80108D5C  38 00 00 01 */	li r0, 1
/* 80108D60  98 1E 12 A2 */	stb r0, 0x12a2(r30)
/* 80108D64  80 1E 12 2C */	lwz r0, 0x122c(r30)
/* 80108D68  60 00 00 01 */	ori r0, r0, 1
/* 80108D6C  90 1E 12 2C */	stw r0, 0x122c(r30)
/* 80108D70  3C 60 80 11 */	lis r3, daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80108D74  38 03 85 9C */	addi r0, r3, daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80108D78  90 1E 12 8C */	stw r0, 0x128c(r30)
/* 80108D7C  98 9E 12 A1 */	stb r4, 0x12a1(r30)
/* 80108D80  80 7E 07 6C */	lwz r3, 0x76c(r30)
/* 80108D84  38 9E 37 EC */	addi r4, r30, 0x37ec
/* 80108D88  38 A0 00 01 */	li r5, 1
/* 80108D8C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80108D90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80108D94  7D 89 03 A6 */	mtctr r12
/* 80108D98  4E 80 04 21 */	bctrl 
/* 80108D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80108DA0  48 25 94 89 */	bl _restgpr_29
/* 80108DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80108DA8  7C 08 03 A6 */	mtlr r0
/* 80108DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80108DB0  4E 80 00 20 */	blr 
