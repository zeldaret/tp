lbl_80541750:
/* 80541750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541754  7C 08 02 A6 */	mflr r0
/* 80541758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054175C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80541760  93 C1 00 08 */	stw r30, 8(r1)
/* 80541764  7C 7F 1B 79 */	or. r31, r3, r3
/* 80541768  7C 9E 23 78 */	mr r30, r4
/* 8054176C  41 82 00 C4 */	beq lbl_80541830
/* 80541770  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80541FEC@ha */
/* 80541774  38 03 1F EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80541FEC@l */
/* 80541778  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 8054177C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80541780  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 80541784  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 80541788  38 A0 00 0C */	li r5, 0xc
/* 8054178C  38 C0 00 03 */	li r6, 3
/* 80541790  4B E2 05 59 */	bl __destroy_arr
/* 80541794  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80541798  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 8054179C  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805417A0  38 A0 00 0C */	li r5, 0xc
/* 805417A4  38 C0 00 03 */	li r6, 3
/* 805417A8  4B E2 05 41 */	bl __destroy_arr
/* 805417AC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 805417B0  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805417B4  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805417B8  38 A0 00 0C */	li r5, 0xc
/* 805417BC  38 C0 00 03 */	li r6, 3
/* 805417C0  4B E2 05 29 */	bl __destroy_arr
/* 805417C4  38 7F 00 78 */	addi r3, r31, 0x78
/* 805417C8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805417CC  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805417D0  38 A0 00 0C */	li r5, 0xc
/* 805417D4  38 C0 00 03 */	li r6, 3
/* 805417D8  4B E2 05 11 */	bl __destroy_arr
/* 805417DC  38 7F 00 54 */	addi r3, r31, 0x54
/* 805417E0  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805417E4  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805417E8  38 A0 00 0C */	li r5, 0xc
/* 805417EC  38 C0 00 03 */	li r6, 3
/* 805417F0  4B E2 04 F9 */	bl __destroy_arr
/* 805417F4  38 7F 00 30 */	addi r3, r31, 0x30
/* 805417F8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805417FC  38 84 12 D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 80541800  38 A0 00 0C */	li r5, 0xc
/* 80541804  38 C0 00 03 */	li r6, 3
/* 80541808  4B E2 04 E1 */	bl __destroy_arr
/* 8054180C  28 1F 00 00 */	cmplwi r31, 0
/* 80541810  41 82 00 10 */	beq lbl_80541820
/* 80541814  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80541FE0@ha */
/* 80541818  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80541FE0@l */
/* 8054181C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80541820:
/* 80541820  7F C0 07 35 */	extsh. r0, r30
/* 80541824  40 81 00 0C */	ble lbl_80541830
/* 80541828  7F E3 FB 78 */	mr r3, r31
/* 8054182C  4B D8 D5 11 */	bl __dl__FPv
lbl_80541830:
/* 80541830  7F E3 FB 78 */	mr r3, r31
/* 80541834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541838  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054183C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541840  7C 08 03 A6 */	mtlr r0
/* 80541844  38 21 00 10 */	addi r1, r1, 0x10
/* 80541848  4E 80 00 20 */	blr 
