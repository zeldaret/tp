lbl_80662228:
/* 80662228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066222C  7C 08 02 A6 */	mflr r0
/* 80662230  90 01 00 24 */	stw r0, 0x24(r1)
/* 80662234  39 61 00 20 */	addi r11, r1, 0x20
/* 80662238  4B CF FF A4 */	b _savegpr_29
/* 8066223C  7C 7F 1B 78 */	mr r31, r3
/* 80662240  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80662244  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80662248  40 82 00 A8 */	bne lbl_806622F0
/* 8066224C  7F E0 FB 79 */	or. r0, r31, r31
/* 80662250  41 82 00 94 */	beq lbl_806622E4
/* 80662254  7C 1E 03 78 */	mr r30, r0
/* 80662258  4B 9B 69 0C */	b __ct__10fopAc_ac_cFv
/* 8066225C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80662260  4B C5 E1 68 */	b __ct__10Z2CreatureFv
/* 80662264  3B BE 06 0C */	addi r29, r30, 0x60c
/* 80662268  7F A3 EB 78 */	mr r3, r29
/* 8066226C  4B A1 3E 34 */	b __ct__9dBgS_AcchFv
/* 80662270  3C 60 80 66 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80662274  38 63 34 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80662278  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8066227C  38 03 00 0C */	addi r0, r3, 0xc
/* 80662280  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80662284  38 03 00 18 */	addi r0, r3, 0x18
/* 80662288  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8066228C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80662290  4B A1 6B D8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80662294  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80662298  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8066229C  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 806622A0  38 7E 08 00 */	addi r3, r30, 0x800
/* 806622A4  4B A2 14 BC */	b __ct__10dCcD_GSttsFv
/* 806622A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806622AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806622B0  90 7E 07 FC */	stw r3, 0x7fc(r30)
/* 806622B4  38 03 00 20 */	addi r0, r3, 0x20
/* 806622B8  90 1E 08 00 */	stw r0, 0x800(r30)
/* 806622BC  38 7E 08 20 */	addi r3, r30, 0x820
/* 806622C0  4B A1 3B EC */	b __ct__12dBgS_AcchCirFv
/* 806622C4  38 7E 08 60 */	addi r3, r30, 0x860
/* 806622C8  3C 80 80 66 */	lis r4, __ct__8dCcD_SphFv@ha
/* 806622CC  38 84 24 A0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 806622D0  3C A0 80 66 */	lis r5, __dt__8dCcD_SphFv@ha
/* 806622D4  38 A5 23 D4 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 806622D8  38 C0 01 38 */	li r6, 0x138
/* 806622DC  38 E0 00 03 */	li r7, 3
/* 806622E0  4B CF FA 80 */	b __construct_array
lbl_806622E4:
/* 806622E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806622E8  60 00 00 08 */	ori r0, r0, 8
/* 806622EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806622F0:
/* 806622F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806622F4  98 1F 0C 5F */	stb r0, 0xc5f(r31)
/* 806622F8  88 1F 0C 5F */	lbz r0, 0xc5f(r31)
/* 806622FC  28 00 00 FF */	cmplwi r0, 0xff
/* 80662300  41 82 00 0C */	beq lbl_8066230C
/* 80662304  28 00 00 05 */	cmplwi r0, 5
/* 80662308  41 80 00 0C */	blt lbl_80662314
lbl_8066230C:
/* 8066230C  38 00 00 00 */	li r0, 0
/* 80662310  98 1F 0C 5F */	stb r0, 0xc5f(r31)
lbl_80662314:
/* 80662314  88 1F 0C 5F */	lbz r0, 0xc5f(r31)
/* 80662318  2C 00 00 02 */	cmpwi r0, 2
/* 8066231C  41 82 00 14 */	beq lbl_80662330
/* 80662320  40 80 00 40 */	bge lbl_80662360
/* 80662324  2C 00 00 01 */	cmpwi r0, 1
/* 80662328  40 80 00 20 */	bge lbl_80662348
/* 8066232C  48 00 00 34 */	b lbl_80662360
lbl_80662330:
/* 80662330  7F E3 FB 78 */	mr r3, r31
/* 80662334  4B FF 71 29 */	bl setEnterCow20__7daCow_cFv
/* 80662338  38 00 00 01 */	li r0, 1
/* 8066233C  98 1F 0C A6 */	stb r0, 0xca6(r31)
/* 80662340  38 60 00 05 */	li r3, 5
/* 80662344  48 00 00 78 */	b lbl_806623BC
lbl_80662348:
/* 80662348  7F E3 FB 78 */	mr r3, r31
/* 8066234C  4B FF 71 F5 */	bl setEnterCow10__7daCow_cFv
/* 80662350  38 00 00 01 */	li r0, 1
/* 80662354  98 1F 0C A6 */	stb r0, 0xca6(r31)
/* 80662358  38 60 00 05 */	li r3, 5
/* 8066235C  48 00 00 60 */	b lbl_806623BC
lbl_80662360:
/* 80662360  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80662364  3C 80 80 66 */	lis r4, stringBase0@ha
/* 80662368  38 84 2F 18 */	addi r4, r4, stringBase0@l
/* 8066236C  4B 9C AB 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80662370  7C 7E 1B 78 */	mr r30, r3
/* 80662374  2C 1E 00 04 */	cmpwi r30, 4
/* 80662378  40 82 00 40 */	bne lbl_806623B8
/* 8066237C  7F E3 FB 78 */	mr r3, r31
/* 80662380  3C 80 80 66 */	lis r4, createHeapCallBack__7daCow_cFP10fopAc_ac_c@ha
/* 80662384  38 84 1D 24 */	addi r4, r4, createHeapCallBack__7daCow_cFP10fopAc_ac_c@l
/* 80662388  38 A0 1D F0 */	li r5, 0x1df0
/* 8066238C  4B 9B 81 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80662390  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80662394  40 82 00 0C */	bne lbl_806623A0
/* 80662398  38 60 00 05 */	li r3, 5
/* 8066239C  48 00 00 20 */	b lbl_806623BC
lbl_806623A0:
/* 806623A0  7F E3 FB 78 */	mr r3, r31
/* 806623A4  4B FF F9 A1 */	bl initialize__7daCow_cFv
/* 806623A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806623AC  40 82 00 0C */	bne lbl_806623B8
/* 806623B0  38 60 00 05 */	li r3, 5
/* 806623B4  48 00 00 08 */	b lbl_806623BC
lbl_806623B8:
/* 806623B8  7F C3 F3 78 */	mr r3, r30
lbl_806623BC:
/* 806623BC  39 61 00 20 */	addi r11, r1, 0x20
/* 806623C0  4B CF FE 68 */	b _restgpr_29
/* 806623C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806623C8  7C 08 03 A6 */	mtlr r0
/* 806623CC  38 21 00 20 */	addi r1, r1, 0x20
/* 806623D0  4E 80 00 20 */	blr 
