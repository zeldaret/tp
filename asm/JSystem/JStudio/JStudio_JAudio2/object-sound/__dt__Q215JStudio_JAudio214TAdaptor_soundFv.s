lbl_8028D8F4:
/* 8028D8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D8F8  7C 08 02 A6 */	mflr r0
/* 8028D8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D904  93 C1 00 08 */	stw r30, 8(r1)
/* 8028D908  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028D90C  7C 9F 23 78 */	mr r31, r4
/* 8028D910  41 82 00 78 */	beq lbl_8028D988
/* 8028D914  3C 60 80 3C */	lis r3, __vt__Q215JStudio_JAudio214TAdaptor_sound@ha
/* 8028D918  38 03 5A 88 */	addi r0, r3, __vt__Q215JStudio_JAudio214TAdaptor_sound@l
/* 8028D91C  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D920  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8028D924  28 03 00 00 */	cmplwi r3, 0
/* 8028D928  41 82 00 34 */	beq lbl_8028D95C
/* 8028D92C  88 1E 01 1F */	lbz r0, 0x11f(r30)
/* 8028D930  28 00 00 00 */	cmplwi r0, 0
/* 8028D934  40 82 00 0C */	bne lbl_8028D940
/* 8028D938  48 01 4C 61 */	bl stop__8JAISoundFv
/* 8028D93C  48 00 00 20 */	b lbl_8028D95C
lbl_8028D940:
/* 8028D940  88 1E 01 1C */	lbz r0, 0x11c(r30)
/* 8028D944  28 00 00 00 */	cmplwi r0, 0
/* 8028D948  41 82 00 10 */	beq lbl_8028D958
/* 8028D94C  38 7E 01 18 */	addi r3, r30, 0x118
/* 8028D950  48 01 48 35 */	bl releaseSound__14JAISoundHandleFv
/* 8028D954  48 00 00 08 */	b lbl_8028D95C
lbl_8028D958:
/* 8028D958  48 01 4C 41 */	bl stop__8JAISoundFv
lbl_8028D95C:
/* 8028D95C  34 1E 01 18 */	addic. r0, r30, 0x118
/* 8028D960  41 82 00 0C */	beq lbl_8028D96C
/* 8028D964  38 7E 01 18 */	addi r3, r30, 0x118
/* 8028D968  48 01 48 1D */	bl releaseSound__14JAISoundHandleFv
lbl_8028D96C:
/* 8028D96C  7F C3 F3 78 */	mr r3, r30
/* 8028D970  38 80 00 00 */	li r4, 0
/* 8028D974  4B FF A1 C9 */	bl __dt__Q27JStudio14TAdaptor_soundFv
/* 8028D978  7F E0 07 35 */	extsh. r0, r31
/* 8028D97C  40 81 00 0C */	ble lbl_8028D988
/* 8028D980  7F C3 F3 78 */	mr r3, r30
/* 8028D984  48 04 13 B9 */	bl __dl__FPv
lbl_8028D988:
/* 8028D988  7F C3 F3 78 */	mr r3, r30
/* 8028D98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D990  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028D994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D998  7C 08 03 A6 */	mtlr r0
/* 8028D99C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D9A0  4E 80 00 20 */	blr 
