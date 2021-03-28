lbl_80031248:
/* 80031248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003124C  7C 08 02 A6 */	mflr r0
/* 80031250  90 01 00 24 */	stw r0, 0x24(r1)
/* 80031254  39 61 00 20 */	addi r11, r1, 0x20
/* 80031258  48 33 0F 85 */	bl _savegpr_29
/* 8003125C  7C 7F 1B 78 */	mr r31, r3
/* 80031260  7C 8C 23 78 */	mr r12, r4
/* 80031264  7C AB 2B 78 */	mr r11, r5
/* 80031268  7C CA 33 78 */	mr r10, r6
/* 8003126C  7C E0 3B 78 */	mr r0, r7
/* 80031270  7D 09 43 78 */	mr r9, r8
/* 80031274  A8 AD 88 0A */	lha r5, struct_80450D88+0x2(r13)
/* 80031278  1C 85 00 24 */	mulli r4, r5, 0x24
/* 8003127C  3C 60 80 42 */	lis r3, mData__7daSus_c@ha
/* 80031280  38 63 3F FC */	addi r3, r3, mData__7daSus_c@l
/* 80031284  7F C3 22 14 */	add r30, r3, r4
/* 80031288  7C BD 2B 78 */	mr r29, r5
/* 8003128C  48 00 00 78 */	b lbl_80031304
lbl_80031290:
/* 80031290  88 7E 00 00 */	lbz r3, 0(r30)
/* 80031294  7C 63 07 75 */	extsb. r3, r3
/* 80031298  40 80 00 64 */	bge lbl_800312FC
/* 8003129C  7F C3 F3 78 */	mr r3, r30
/* 800312A0  7F E4 FB 78 */	mr r4, r31
/* 800312A4  7D 85 63 78 */	mr r5, r12
/* 800312A8  7D 66 5B 78 */	mr r6, r11
/* 800312AC  7D 47 53 78 */	mr r7, r10
/* 800312B0  7C 08 03 78 */	mr r8, r0
/* 800312B4  4B FF FC 61 */	bl set__Q27daSus_c6data_cFScRC4cXyzRC4cXyzUcUcUc
/* 800312B8  7F E0 07 74 */	extsb r0, r31
/* 800312BC  54 04 10 3A */	slwi r4, r0, 2
/* 800312C0  3C 60 80 42 */	lis r3, mRoom__7daSus_c@ha
/* 800312C4  38 03 44 7C */	addi r0, r3, mRoom__7daSus_c@l
/* 800312C8  7C 60 22 14 */	add r3, r0, r4
/* 800312CC  7F C4 F3 78 */	mr r4, r30
/* 800312D0  4B FF FE C1 */	bl add__Q27daSus_c6room_cFPQ27daSus_c6data_c
/* 800312D4  7F A3 07 34 */	extsh r3, r29
/* 800312D8  38 63 00 01 */	addi r3, r3, 1
/* 800312DC  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 800312E0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800312E4  7C 03 00 50 */	subf r0, r3, r0
/* 800312E8  54 00 28 3E */	rotlwi r0, r0, 5
/* 800312EC  7C 00 1A 14 */	add r0, r0, r3
/* 800312F0  B0 0D 88 0A */	sth r0, struct_80450D88+0x2(r13)
/* 800312F4  38 60 00 01 */	li r3, 1
/* 800312F8  48 00 00 AC */	b lbl_800313A4
lbl_800312FC:
/* 800312FC  3B DE 00 24 */	addi r30, r30, 0x24
/* 80031300  3B BD 00 01 */	addi r29, r29, 1
lbl_80031304:
/* 80031304  7F A3 07 34 */	extsh r3, r29
/* 80031308  2C 03 00 20 */	cmpwi r3, 0x20
/* 8003130C  41 80 FF 84 */	blt lbl_80031290
/* 80031310  3C 60 80 42 */	lis r3, mData__7daSus_c@ha
/* 80031314  3B C3 3F FC */	addi r30, r3, mData__7daSus_c@l
/* 80031318  3B A0 00 00 */	li r29, 0
/* 8003131C  48 00 00 78 */	b lbl_80031394
lbl_80031320:
/* 80031320  88 7E 00 00 */	lbz r3, 0(r30)
/* 80031324  7C 63 07 75 */	extsb. r3, r3
/* 80031328  40 80 00 64 */	bge lbl_8003138C
/* 8003132C  7F C3 F3 78 */	mr r3, r30
/* 80031330  7F E4 FB 78 */	mr r4, r31
/* 80031334  7D 85 63 78 */	mr r5, r12
/* 80031338  7D 66 5B 78 */	mr r6, r11
/* 8003133C  7D 47 53 78 */	mr r7, r10
/* 80031340  7C 08 03 78 */	mr r8, r0
/* 80031344  4B FF FB D1 */	bl set__Q27daSus_c6data_cFScRC4cXyzRC4cXyzUcUcUc
/* 80031348  7F E0 07 74 */	extsb r0, r31
/* 8003134C  54 04 10 3A */	slwi r4, r0, 2
/* 80031350  3C 60 80 42 */	lis r3, mRoom__7daSus_c@ha
/* 80031354  38 03 44 7C */	addi r0, r3, mRoom__7daSus_c@l
/* 80031358  7C 60 22 14 */	add r3, r0, r4
/* 8003135C  7F C4 F3 78 */	mr r4, r30
/* 80031360  4B FF FE 31 */	bl add__Q27daSus_c6room_cFPQ27daSus_c6data_c
/* 80031364  7F A3 07 34 */	extsh r3, r29
/* 80031368  38 63 00 01 */	addi r3, r3, 1
/* 8003136C  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 80031370  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80031374  7C 03 00 50 */	subf r0, r3, r0
/* 80031378  54 00 28 3E */	rotlwi r0, r0, 5
/* 8003137C  7C 00 1A 14 */	add r0, r0, r3
/* 80031380  B0 0D 88 0A */	sth r0, struct_80450D88+0x2(r13)
/* 80031384  38 60 00 01 */	li r3, 1
/* 80031388  48 00 00 1C */	b lbl_800313A4
lbl_8003138C:
/* 8003138C  3B DE 00 24 */	addi r30, r30, 0x24
/* 80031390  3B BD 00 01 */	addi r29, r29, 1
lbl_80031394:
/* 80031394  7F A3 07 34 */	extsh r3, r29
/* 80031398  7C 03 28 00 */	cmpw r3, r5
/* 8003139C  41 80 FF 84 */	blt lbl_80031320
/* 800313A0  38 60 00 00 */	li r3, 0
lbl_800313A4:
/* 800313A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800313A8  48 33 0E 81 */	bl _restgpr_29
/* 800313AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800313B0  7C 08 03 A6 */	mtlr r0
/* 800313B4  38 21 00 20 */	addi r1, r1, 0x20
/* 800313B8  4E 80 00 20 */	blr 
