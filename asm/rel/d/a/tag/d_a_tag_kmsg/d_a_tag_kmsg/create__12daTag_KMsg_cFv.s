lbl_8048DE78:
/* 8048DE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DE7C  7C 08 02 A6 */	mflr r0
/* 8048DE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048DE88  93 C1 00 08 */	stw r30, 8(r1)
/* 8048DE8C  7C 7F 1B 78 */	mr r31, r3
/* 8048DE90  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048DE94  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 8048DE98  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048DE9C  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 8048DEA0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8048DEA4  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 8048DEA8  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 8048DEAC  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 8048DEB0  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 8048DEB4  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 8048DEB8  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 8048DEBC  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 8048DEC0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048DEC4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048DEC8  40 82 00 34 */	bne lbl_8048DEFC
/* 8048DECC  7F E0 FB 79 */	or. r0, r31, r31
/* 8048DED0  41 82 00 20 */	beq lbl_8048DEF0
/* 8048DED4  7C 1E 03 78 */	mr r30, r0
/* 8048DED8  4B B8 AC 8C */	b __ct__10fopAc_ac_cFv
/* 8048DEDC  3C 60 80 49 */	lis r3, __vt__12daTag_KMsg_c@ha
/* 8048DEE0  38 03 EB A0 */	addi r0, r3, __vt__12daTag_KMsg_c@l
/* 8048DEE4  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 8048DEE8  38 7E 05 70 */	addi r3, r30, 0x570
/* 8048DEEC  4B DB C0 14 */	b __ct__10dMsgFlow_cFv
lbl_8048DEF0:
/* 8048DEF0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048DEF4  60 00 00 08 */	ori r0, r0, 8
/* 8048DEF8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048DEFC:
/* 8048DEFC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8048DF00  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048DF04  38 03 FF 01 */	addi r0, r3, -255
/* 8048DF08  30 00 FF FF */	addic r0, r0, -1
/* 8048DF0C  7C 00 01 10 */	subfe r0, r0, r0
/* 8048DF10  7C 60 00 78 */	andc r0, r3, r0
/* 8048DF14  2C 00 00 03 */	cmpwi r0, 3
/* 8048DF18  40 82 00 24 */	bne lbl_8048DF3C
/* 8048DF1C  38 7F 05 68 */	addi r3, r31, 0x568
/* 8048DF20  3C 80 80 49 */	lis r4, struct_8048EAFC+0x0@ha
/* 8048DF24  38 84 EA FC */	addi r4, r4, struct_8048EAFC+0x0@l
/* 8048DF28  38 84 00 23 */	addi r4, r4, 0x23
/* 8048DF2C  4B B9 EF 90 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8048DF30  2C 03 00 04 */	cmpwi r3, 4
/* 8048DF34  41 82 00 08 */	beq lbl_8048DF3C
/* 8048DF38  48 00 00 8C */	b lbl_8048DFC4
lbl_8048DF3C:
/* 8048DF3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8048DF40  54 04 46 3E */	srwi r4, r0, 0x18
/* 8048DF44  38 64 FF 01 */	addi r3, r4, -255
/* 8048DF48  30 03 FF FF */	addic r0, r3, -1
/* 8048DF4C  7C 00 01 10 */	subfe r0, r0, r0
/* 8048DF50  7C 80 00 78 */	andc r0, r4, r0
/* 8048DF54  2C 00 00 02 */	cmpwi r0, 2
/* 8048DF58  41 82 00 18 */	beq lbl_8048DF70
/* 8048DF5C  30 03 FF FF */	addic r0, r3, -1
/* 8048DF60  7C 00 01 10 */	subfe r0, r0, r0
/* 8048DF64  7C 80 00 78 */	andc r0, r4, r0
/* 8048DF68  2C 00 00 05 */	cmpwi r0, 5
/* 8048DF6C  40 82 00 18 */	bne lbl_8048DF84
lbl_8048DF70:
/* 8048DF70  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 8048DF74  3C 60 80 49 */	lis r3, lit_3884@ha
/* 8048DF78  C0 03 EA DC */	lfs f0, lit_3884@l(r3)
/* 8048DF7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048DF80  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
lbl_8048DF84:
/* 8048DF84  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8048DF88  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8048DF8C  28 03 FF FF */	cmplwi r3, 0xffff
/* 8048DF90  38 00 FF FF */	li r0, -1
/* 8048DF94  41 82 00 08 */	beq lbl_8048DF9C
/* 8048DF98  7C 60 1B 78 */	mr r0, r3
lbl_8048DF9C:
/* 8048DF9C  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 8048DFA0  38 00 FF FF */	li r0, -1
/* 8048DFA4  B0 1F 05 C0 */	sth r0, 0x5c0(r31)
/* 8048DFA8  7F E3 FB 78 */	mr r3, r31
/* 8048DFAC  48 00 09 15 */	bl isDelete__12daTag_KMsg_cFv
/* 8048DFB0  2C 03 00 00 */	cmpwi r3, 0
/* 8048DFB4  41 82 00 0C */	beq lbl_8048DFC0
/* 8048DFB8  38 60 00 05 */	li r3, 5
/* 8048DFBC  48 00 00 08 */	b lbl_8048DFC4
lbl_8048DFC0:
/* 8048DFC0  38 60 00 04 */	li r3, 4
lbl_8048DFC4:
/* 8048DFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048DFC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048DFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DFD0  7C 08 03 A6 */	mtlr r0
/* 8048DFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DFD8  4E 80 00 20 */	blr 
