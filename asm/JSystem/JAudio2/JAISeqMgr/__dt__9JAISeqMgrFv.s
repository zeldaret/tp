lbl_802A20F0:
/* 802A20F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A20F4  7C 08 02 A6 */	mflr r0
/* 802A20F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A20FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2100  93 C1 00 08 */	stw r30, 8(r1)
/* 802A2104  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A2108  7C 9F 23 78 */	mr r31, r4
/* 802A210C  41 82 00 5C */	beq lbl_802A2168
/* 802A2110  3C 60 80 3D */	lis r3, __vt__9JAISeqMgr@ha /* 0x803C9958@ha */
/* 802A2114  38 03 99 58 */	addi r0, r3, __vt__9JAISeqMgr@l /* 0x803C9958@l */
/* 802A2118  90 1E 00 00 */	stw r0, 0(r30)
/* 802A211C  34 1E 00 64 */	addic. r0, r30, 0x64
/* 802A2120  41 82 00 10 */	beq lbl_802A2130
/* 802A2124  38 7E 00 64 */	addi r3, r30, 0x64
/* 802A2128  38 80 00 00 */	li r4, 0
/* 802A212C  48 03 9D 81 */	bl __dt__10JSUPtrListFv
lbl_802A2130:
/* 802A2130  7F C3 F3 78 */	mr r3, r30
/* 802A2134  38 80 00 00 */	li r4, 0
/* 802A2138  4B FF F6 3D */	bl __dt__14JAISeqDataUserFv
/* 802A213C  28 1E 00 00 */	cmplwi r30, 0
/* 802A2140  41 82 00 18 */	beq lbl_802A2158
/* 802A2144  80 0D 85 E8 */	lwz r0, __OSReport_disable-0x30(r13)
/* 802A2148  7C 00 F0 40 */	cmplw r0, r30
/* 802A214C  40 82 00 0C */	bne lbl_802A2158
/* 802A2150  38 00 00 00 */	li r0, 0
/* 802A2154  90 0D 85 E8 */	stw r0, __OSReport_disable-0x30(r13)
lbl_802A2158:
/* 802A2158  7F E0 07 35 */	extsh. r0, r31
/* 802A215C  40 81 00 0C */	ble lbl_802A2168
/* 802A2160  7F C3 F3 78 */	mr r3, r30
/* 802A2164  48 02 CB D9 */	bl __dl__FPv
lbl_802A2168:
/* 802A2168  7F C3 F3 78 */	mr r3, r30
/* 802A216C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2170  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A2174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2178  7C 08 03 A6 */	mtlr r0
/* 802A217C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2180  4E 80 00 20 */	blr 
