lbl_802E06DC:
/* 802E06DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E06E0  7C 08 02 A6 */	mflr r0
/* 802E06E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E06E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E06EC  93 C1 00 08 */	stw r30, 8(r1)
/* 802E06F0  7C 7E 1B 78 */	mr r30, r3
/* 802E06F4  7C 9F 23 78 */	mr r31, r4
/* 802E06F8  4B FF 0D 85 */	bl __ct__11JKRDisposerFv
/* 802E06FC  3C 60 80 3D */	lis r3, __vt__10JUTGamePad@ha
/* 802E0700  38 03 C6 10 */	addi r0, r3, __vt__10JUTGamePad@l
/* 802E0704  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0708  38 7E 00 18 */	addi r3, r30, 0x18
/* 802E070C  48 00 09 45 */	bl clear__Q210JUTGamePad7CButtonFv
/* 802E0710  38 7E 00 48 */	addi r3, r30, 0x48
/* 802E0714  48 00 0B 09 */	bl clear__Q210JUTGamePad6CStickFv
/* 802E0718  38 7E 00 58 */	addi r3, r30, 0x58
/* 802E071C  48 00 0B 01 */	bl clear__Q210JUTGamePad6CStickFv
/* 802E0720  38 7E 00 68 */	addi r3, r30, 0x68
/* 802E0724  7F C4 F3 78 */	mr r4, r30
/* 802E0728  48 00 0E B1 */	bl clear__Q210JUTGamePad7CRumbleFP10JUTGamePad
/* 802E072C  38 7E 00 80 */	addi r3, r30, 0x80
/* 802E0730  7F C4 F3 78 */	mr r4, r30
/* 802E0734  4B FF B6 C9 */	bl __ct__10JSUPtrLinkFPv
/* 802E0738  38 00 00 00 */	li r0, 0
/* 802E073C  98 1E 00 98 */	stb r0, 0x98(r30)
/* 802E0740  B3 FE 00 7C */	sth r31, 0x7c(r30)
/* 802E0744  7F C3 F3 78 */	mr r3, r30
/* 802E0748  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 802E074C  2C 00 00 00 */	cmpwi r0, 0
/* 802E0750  41 80 00 14 */	blt lbl_802E0764
/* 802E0754  38 AD 8F 54 */	la r5, mPadAssign__10JUTGamePad(r13) /* 804514D4-_SDA_BASE_ */
/* 802E0758  7C 85 F8 AE */	lbzx r4, r5, r31
/* 802E075C  38 04 00 01 */	addi r0, r4, 1
/* 802E0760  7C 05 F9 AE */	stbx r0, r5, r31
lbl_802E0764:
/* 802E0764  48 00 00 F9 */	bl initList__10JUTGamePadFv
/* 802E0768  3C 60 80 43 */	lis r3, mPadList__10JUTGamePad@ha
/* 802E076C  38 63 43 E4 */	addi r3, r3, mPadList__10JUTGamePad@l
/* 802E0770  38 9E 00 80 */	addi r4, r30, 0x80
/* 802E0774  4B FF B7 D9 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802E0778  7F C3 F3 78 */	mr r3, r30
/* 802E077C  48 00 05 5D */	bl update__10JUTGamePadFv
/* 802E0780  38 00 00 00 */	li r0, 0
/* 802E0784  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802E0788  90 1E 00 94 */	stw r0, 0x94(r30)
/* 802E078C  7F C3 F3 78 */	mr r3, r30
/* 802E0790  48 00 01 41 */	bl clear__10JUTGamePadFv
/* 802E0794  7F C3 F3 78 */	mr r3, r30
/* 802E0798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E079C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E07A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E07A4  7C 08 03 A6 */	mtlr r0
/* 802E07A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E07AC  4E 80 00 20 */	blr 
