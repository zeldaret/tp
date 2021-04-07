lbl_80CE7E5C:
/* 80CE7E5C  3C 60 80 CE */	lis r3, mCcDCyl__14daObj_SSItem_c@ha /* 0x80CE7F58@ha */
/* 80CE7E60  38 63 7F 58 */	addi r3, r3, mCcDCyl__14daObj_SSItem_c@l /* 0x80CE7F58@l */
/* 80CE7E64  38 A3 FF FC */	addi r5, r3, -4
/* 80CE7E68  3C 60 80 CE */	lis r3, mCcDObjInfo__14daObj_SSItem_c@ha /* 0x80CE7EB0@ha */
/* 80CE7E6C  38 63 7E B0 */	addi r3, r3, mCcDObjInfo__14daObj_SSItem_c@l /* 0x80CE7EB0@l */
/* 80CE7E70  38 83 FF FC */	addi r4, r3, -4
/* 80CE7E74  38 00 00 06 */	li r0, 6
/* 80CE7E78  7C 09 03 A6 */	mtctr r0
lbl_80CE7E7C:
/* 80CE7E7C  80 64 00 04 */	lwz r3, 4(r4)
/* 80CE7E80  84 04 00 08 */	lwzu r0, 8(r4)
/* 80CE7E84  90 65 00 04 */	stw r3, 4(r5)
/* 80CE7E88  94 05 00 08 */	stwu r0, 8(r5)
/* 80CE7E8C  42 00 FF F0 */	bdnz lbl_80CE7E7C
/* 80CE7E90  4E 80 00 20 */	blr 
