lbl_80B2408C:
/* 80B2408C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B24090  7C 08 02 A6 */	mflr r0
/* 80B24094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B24098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2409C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B240A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B240A4  7C 9E 23 78 */	mr r30, r4
/* 80B240A8  41 82 00 C4 */	beq lbl_80B2416C
/* 80B240AC  3C 60 80 B2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B240B0  38 03 57 38 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B240B4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B240B8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B240BC  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B240C0  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B240C4  38 A0 00 0C */	li r5, 0xc
/* 80B240C8  38 C0 00 03 */	li r6, 3
/* 80B240CC  4B 83 DC 1C */	b __destroy_arr
/* 80B240D0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B240D4  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B240D8  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B240DC  38 A0 00 0C */	li r5, 0xc
/* 80B240E0  38 C0 00 03 */	li r6, 3
/* 80B240E4  4B 83 DC 04 */	b __destroy_arr
/* 80B240E8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B240EC  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B240F0  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B240F4  38 A0 00 0C */	li r5, 0xc
/* 80B240F8  38 C0 00 03 */	li r6, 3
/* 80B240FC  4B 83 DB EC */	b __destroy_arr
/* 80B24100  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B24104  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B24108  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B2410C  38 A0 00 0C */	li r5, 0xc
/* 80B24110  38 C0 00 03 */	li r6, 3
/* 80B24114  4B 83 DB D4 */	b __destroy_arr
/* 80B24118  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B2411C  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B24120  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B24124  38 A0 00 0C */	li r5, 0xc
/* 80B24128  38 C0 00 03 */	li r6, 3
/* 80B2412C  4B 83 DB BC */	b __destroy_arr
/* 80B24130  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B24134  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B24138  38 84 3A B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B2413C  38 A0 00 0C */	li r5, 0xc
/* 80B24140  38 C0 00 03 */	li r6, 3
/* 80B24144  4B 83 DB A4 */	b __destroy_arr
/* 80B24148  28 1F 00 00 */	cmplwi r31, 0
/* 80B2414C  41 82 00 10 */	beq lbl_80B2415C
/* 80B24150  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B24154  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B24158  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B2415C:
/* 80B2415C  7F C0 07 35 */	extsh. r0, r30
/* 80B24160  40 81 00 0C */	ble lbl_80B2416C
/* 80B24164  7F E3 FB 78 */	mr r3, r31
/* 80B24168  4B 7A AB D4 */	b __dl__FPv
lbl_80B2416C:
/* 80B2416C  7F E3 FB 78 */	mr r3, r31
/* 80B24170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B24174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B24178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2417C  7C 08 03 A6 */	mtlr r0
/* 80B24180  38 21 00 10 */	addi r1, r1, 0x10
/* 80B24184  4E 80 00 20 */	blr 
