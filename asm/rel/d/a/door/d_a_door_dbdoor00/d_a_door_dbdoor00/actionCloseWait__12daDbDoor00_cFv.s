lbl_8045E108:
/* 8045E108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E10C  7C 08 02 A6 */	mflr r0
/* 8045E110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E118  93 C1 00 08 */	stw r30, 8(r1)
/* 8045E11C  7C 7E 1B 78 */	mr r30, r3
/* 8045E120  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8045E124  28 00 00 03 */	cmplwi r0, 3
/* 8045E128  40 82 00 58 */	bne lbl_8045E180
/* 8045E12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E134  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8045E138  38 7F 40 C0 */	addi r3, r31, 0x40c0
/* 8045E13C  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045E140  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045E144  38 84 00 D1 */	addi r4, r4, 0xd1
/* 8045E148  38 A0 00 00 */	li r5, 0
/* 8045E14C  38 C0 00 00 */	li r6, 0
/* 8045E150  4B BE 99 CD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8045E154  90 7E 05 98 */	stw r3, 0x598(r30)
/* 8045E158  7F C3 F3 78 */	mr r3, r30
/* 8045E15C  4B FF F9 55 */	bl demoProc__12daDbDoor00_cFv
/* 8045E160  38 00 00 05 */	li r0, 5
/* 8045E164  98 1E 05 86 */	stb r0, 0x586(r30)
/* 8045E168  7F E3 FB 78 */	mr r3, r31
/* 8045E16C  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 8045E170  4B C1 60 E1 */	bl Release__4cBgSFP9dBgW_Base
/* 8045E174  38 00 00 00 */	li r0, 0
/* 8045E178  98 1E 05 84 */	stb r0, 0x584(r30)
/* 8045E17C  48 00 00 30 */	b lbl_8045E1AC
lbl_8045E180:
/* 8045E180  4B FF FC C5 */	bl checkArea__12daDbDoor00_cFv
/* 8045E184  2C 03 00 00 */	cmpwi r3, 0
/* 8045E188  41 82 00 24 */	beq lbl_8045E1AC
/* 8045E18C  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 8045E190  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045E194  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045E198  38 84 00 DD */	addi r4, r4, 0xdd
/* 8045E19C  4B BE 52 8D */	bl setEventName__11dEvt_info_cFPc
/* 8045E1A0  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8045E1A4  60 00 00 04 */	ori r0, r0, 4
/* 8045E1A8  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_8045E1AC:
/* 8045E1AC  38 60 00 01 */	li r3, 1
/* 8045E1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E1B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045E1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E1BC  7C 08 03 A6 */	mtlr r0
/* 8045E1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E1C4  4E 80 00 20 */	blr 
