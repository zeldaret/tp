lbl_80AEC704:
/* 80AEC704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEC708  7C 08 02 A6 */	mflr r0
/* 80AEC70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEC710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEC714  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEC718  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEC71C  7C 9F 23 78 */	mr r31, r4
/* 80AEC720  41 82 00 38 */	beq lbl_80AEC758
/* 80AEC724  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AEC994@ha */
/* 80AEC728  38 84 C9 94 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AEC994@l */
/* 80AEC72C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AEC730  38 04 00 0C */	addi r0, r4, 0xc
/* 80AEC734  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AEC738  38 04 00 18 */	addi r0, r4, 0x18
/* 80AEC73C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AEC740  38 80 00 00 */	li r4, 0
/* 80AEC744  4B 58 98 51 */	bl __dt__9dBgS_AcchFv
/* 80AEC748  7F E0 07 35 */	extsh. r0, r31
/* 80AEC74C  40 81 00 0C */	ble lbl_80AEC758
/* 80AEC750  7F C3 F3 78 */	mr r3, r30
/* 80AEC754  4B 7E 25 E9 */	bl __dl__FPv
lbl_80AEC758:
/* 80AEC758  7F C3 F3 78 */	mr r3, r30
/* 80AEC75C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEC760  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEC764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEC768  7C 08 03 A6 */	mtlr r0
/* 80AEC76C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEC770  4E 80 00 20 */	blr 
