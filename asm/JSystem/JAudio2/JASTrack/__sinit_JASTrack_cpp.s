lbl_80293388:
/* 80293388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029338C  7C 08 02 A6 */	mflr r0
/* 80293390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293398  93 C1 00 08 */	stw r30, 8(r1)
/* 8029339C  3C 60 80 43 */	lis r3, lit_431@ha /* 0x804316A8@ha */
/* 802933A0  3B E3 16 A8 */	addi r31, r3, lit_431@l /* 0x804316A8@l */
/* 802933A4  3B DF 00 0C */	addi r30, r31, 0xc
/* 802933A8  3C 60 80 3C */	lis r3, __vt__11JASBankList@ha /* 0x803C5B80@ha */
/* 802933AC  38 03 5B 80 */	addi r0, r3, __vt__11JASBankList@l /* 0x803C5B80@l */
/* 802933B0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802933B4  3C 60 80 3C */	lis r3, data_803C5B74@ha /* 0x803C5B74@ha */
/* 802933B8  38 03 5B 74 */	addi r0, r3, data_803C5B74@l /* 0x803C5B74@l */
/* 802933BC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802933C0  38 7E 00 0C */	addi r3, r30, 0xc
/* 802933C4  90 7E 00 04 */	stw r3, 4(r30)
/* 802933C8  38 00 01 00 */	li r0, 0x100
/* 802933CC  90 1E 00 08 */	stw r0, 8(r30)
/* 802933D0  38 80 00 00 */	li r4, 0
/* 802933D4  38 A0 04 00 */	li r5, 0x400
/* 802933D8  4B D7 00 81 */	bl memset
/* 802933DC  7F C3 F3 78 */	mr r3, r30
/* 802933E0  34 63 04 0C */	addic. r3, r3, 0x40c
/* 802933E4  41 82 00 08 */	beq lbl_802933EC
/* 802933E8  38 63 FB F4 */	addi r3, r3, -1036
lbl_802933EC:
/* 802933EC  90 6D 86 10 */	stw r3, data_80450B90(r13)
/* 802933F0  3C 60 80 3C */	lis r3, __vt__19JASDefaultBankTable@ha /* 0x803C5B68@ha */
/* 802933F4  38 03 5B 68 */	addi r0, r3, __vt__19JASDefaultBankTable@l /* 0x803C5B68@l */
/* 802933F8  90 1E 00 00 */	stw r0, 0(r30)
/* 802933FC  7F C3 F3 78 */	mr r3, r30
/* 80293400  3C 80 80 29 */	lis r4, __dt__19JASDefaultBankTableFv@ha /* 0x802934B4@ha */
/* 80293404  38 84 34 B4 */	addi r4, r4, __dt__19JASDefaultBankTableFv@l /* 0x802934B4@l */
/* 80293408  38 BF 00 00 */	addi r5, r31, 0
/* 8029340C  48 0C E8 19 */	bl __register_global_object
/* 80293410  38 00 00 00 */	li r0, 0
/* 80293414  38 9F 04 24 */	addi r4, r31, 0x424
/* 80293418  94 04 00 04 */	stwu r0, 4(r4)
/* 8029341C  38 7F 04 24 */	addi r3, r31, 0x424
/* 80293420  90 03 00 08 */	stw r0, 8(r3)
/* 80293424  90 1F 04 24 */	stw r0, 0x424(r31)
/* 80293428  90 84 00 00 */	stw r4, 0(r4)
/* 8029342C  90 83 00 08 */	stw r4, 8(r3)
/* 80293430  98 03 00 0C */	stb r0, 0xc(r3)
/* 80293434  3C 80 80 29 */	lis r4, __dt__Q28JASTrack5TListFv@ha /* 0x8029345C@ha */
/* 80293438  38 84 34 5C */	addi r4, r4, __dt__Q28JASTrack5TListFv@l /* 0x8029345C@l */
/* 8029343C  38 BF 04 18 */	addi r5, r31, 0x418
/* 80293440  48 0C E7 E5 */	bl __register_global_object
/* 80293444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293448  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029344C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293450  7C 08 03 A6 */	mtlr r0
/* 80293454  38 21 00 10 */	addi r1, r1, 0x10
/* 80293458  4E 80 00 20 */	blr 
