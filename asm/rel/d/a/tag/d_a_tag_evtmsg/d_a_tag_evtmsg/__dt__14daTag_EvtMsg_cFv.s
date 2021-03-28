lbl_8048D6F0:
/* 8048D6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D6F4  7C 08 02 A6 */	mflr r0
/* 8048D6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D6FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D700  93 C1 00 08 */	stw r30, 8(r1)
/* 8048D704  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048D708  7C 9F 23 78 */	mr r31, r4
/* 8048D70C  41 82 00 38 */	beq lbl_8048D744
/* 8048D710  3C 60 80 49 */	lis r3, __vt__14daTag_EvtMsg_c@ha
/* 8048D714  38 03 D8 D4 */	addi r0, r3, __vt__14daTag_EvtMsg_c@l
/* 8048D718  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8048D71C  38 7E 05 74 */	addi r3, r30, 0x574
/* 8048D720  38 80 FF FF */	li r4, -1
/* 8048D724  4B DB C8 24 */	b __dt__10dMsgFlow_cFv
/* 8048D728  7F C3 F3 78 */	mr r3, r30
/* 8048D72C  38 80 00 00 */	li r4, 0
/* 8048D730  4B B8 B5 5C */	b __dt__10fopAc_ac_cFv
/* 8048D734  7F E0 07 35 */	extsh. r0, r31
/* 8048D738  40 81 00 0C */	ble lbl_8048D744
/* 8048D73C  7F C3 F3 78 */	mr r3, r30
/* 8048D740  4B E4 15 FC */	b __dl__FPv
lbl_8048D744:
/* 8048D744  7F C3 F3 78 */	mr r3, r30
/* 8048D748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D74C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D754  7C 08 03 A6 */	mtlr r0
/* 8048D758  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D75C  4E 80 00 20 */	blr 
