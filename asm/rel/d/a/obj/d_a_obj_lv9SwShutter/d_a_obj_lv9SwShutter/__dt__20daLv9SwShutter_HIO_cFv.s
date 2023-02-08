lbl_80C8D730:
/* 80C8D730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D734  7C 08 02 A6 */	mflr r0
/* 80C8D738  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8D740  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8D744  41 82 00 30 */	beq lbl_80C8D774
/* 80C8D748  3C 60 80 C9 */	lis r3, __vt__20daLv9SwShutter_HIO_c@ha /* 0x80C8D8EC@ha */
/* 80C8D74C  38 03 D8 EC */	addi r0, r3, __vt__20daLv9SwShutter_HIO_c@l /* 0x80C8D8EC@l */
/* 80C8D750  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8D754  41 82 00 10 */	beq lbl_80C8D764
/* 80C8D758  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C8D8F8@ha */
/* 80C8D75C  38 03 D8 F8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C8D8F8@l */
/* 80C8D760  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8D764:
/* 80C8D764  7C 80 07 35 */	extsh. r0, r4
/* 80C8D768  40 81 00 0C */	ble lbl_80C8D774
/* 80C8D76C  7F E3 FB 78 */	mr r3, r31
/* 80C8D770  4B 64 15 CD */	bl __dl__FPv
lbl_80C8D774:
/* 80C8D774  7F E3 FB 78 */	mr r3, r31
/* 80C8D778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8D77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D780  7C 08 03 A6 */	mtlr r0
/* 80C8D784  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D788  4E 80 00 20 */	blr 
