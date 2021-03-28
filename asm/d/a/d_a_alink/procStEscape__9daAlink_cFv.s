lbl_800DB610:
/* 800DB610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB614  7C 08 02 A6 */	mflr r0
/* 800DB618  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB620  93 C1 00 08 */	stw r30, 8(r1)
/* 800DB624  7C 7E 1B 78 */	mr r30, r3
/* 800DB628  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800DB62C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800DB630  64 00 08 00 */	oris r0, r0, 0x800
/* 800DB634  90 03 05 88 */	stw r0, 0x588(r3)
/* 800DB638  7F E3 FB 78 */	mr r3, r31
/* 800DB63C  48 08 2E 91 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DB640  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DB644  41 82 00 14 */	beq lbl_800DB658
/* 800DB648  7F C3 F3 78 */	mr r3, r30
/* 800DB64C  38 80 00 00 */	li r4, 0
/* 800DB650  4B FD EA 81 */	bl checkNextAction__9daAlink_cFi
/* 800DB654  48 00 00 34 */	b lbl_800DB688
lbl_800DB658:
/* 800DB658  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800DB65C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_damCaught_c0@ha
/* 800DB660  38 63 E4 9C */	addi r3, r3, m__23daAlinkHIO_damCaught_c0@l
/* 800DB664  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800DB668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DB66C  40 81 00 1C */	ble lbl_800DB688
/* 800DB670  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DB674  60 00 00 04 */	ori r0, r0, 4
/* 800DB678  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DB67C  7F C3 F3 78 */	mr r3, r30
/* 800DB680  38 80 00 01 */	li r4, 1
/* 800DB684  4B FD EA 4D */	bl checkNextAction__9daAlink_cFi
lbl_800DB688:
/* 800DB688  38 60 00 01 */	li r3, 1
/* 800DB68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB690  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DB694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB698  7C 08 03 A6 */	mtlr r0
/* 800DB69C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB6A0  4E 80 00 20 */	blr 
