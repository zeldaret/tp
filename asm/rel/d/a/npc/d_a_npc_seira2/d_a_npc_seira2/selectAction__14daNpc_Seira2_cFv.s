lbl_80AD2748:
/* 80AD2748  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD274C  38 C4 4B 90 */	addi r6, r4, cNullVec__6Z2Calc@l
/* 80AD2750  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80AD2754  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80AD2758  80 85 00 00 */	lwz r4, 0(r5)
/* 80AD275C  80 05 00 04 */	lwz r0, 4(r5)
/* 80AD2760  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD2764  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD2768  80 05 00 08 */	lwz r0, 8(r5)
/* 80AD276C  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD2770  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80AD2774  2C 00 00 03 */	cmpwi r0, 3
/* 80AD2778  41 82 00 84 */	beq lbl_80AD27FC
/* 80AD277C  40 80 00 1C */	bge lbl_80AD2798
/* 80AD2780  2C 00 00 01 */	cmpwi r0, 1
/* 80AD2784  41 82 00 40 */	beq lbl_80AD27C4
/* 80AD2788  40 80 00 58 */	bge lbl_80AD27E0
/* 80AD278C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2790  40 80 00 18 */	bge lbl_80AD27A8
/* 80AD2794  48 00 00 BC */	b lbl_80AD2850
lbl_80AD2798:
/* 80AD2798  2C 00 00 05 */	cmpwi r0, 5
/* 80AD279C  41 82 00 98 */	beq lbl_80AD2834
/* 80AD27A0  40 80 00 B0 */	bge lbl_80AD2850
/* 80AD27A4  48 00 00 74 */	b lbl_80AD2818
lbl_80AD27A8:
/* 80AD27A8  80 86 08 60 */	lwz r4, 0x860(r6)
/* 80AD27AC  80 06 08 64 */	lwz r0, 0x864(r6)
/* 80AD27B0  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD27B4  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD27B8  80 06 08 68 */	lwz r0, 0x868(r6)
/* 80AD27BC  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD27C0  48 00 00 A8 */	b lbl_80AD2868
lbl_80AD27C4:
/* 80AD27C4  80 86 08 6C */	lwz r4, 0x86c(r6)
/* 80AD27C8  80 06 08 70 */	lwz r0, 0x870(r6)
/* 80AD27CC  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD27D0  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD27D4  80 06 08 74 */	lwz r0, 0x874(r6)
/* 80AD27D8  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD27DC  48 00 00 8C */	b lbl_80AD2868
lbl_80AD27E0:
/* 80AD27E0  80 86 08 78 */	lwz r4, 0x878(r6)
/* 80AD27E4  80 06 08 7C */	lwz r0, 0x87c(r6)
/* 80AD27E8  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD27EC  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD27F0  80 06 08 80 */	lwz r0, 0x880(r6)
/* 80AD27F4  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD27F8  48 00 00 70 */	b lbl_80AD2868
lbl_80AD27FC:
/* 80AD27FC  80 86 08 84 */	lwz r4, 0x884(r6)
/* 80AD2800  80 06 08 88 */	lwz r0, 0x888(r6)
/* 80AD2804  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD2808  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD280C  80 06 08 8C */	lwz r0, 0x88c(r6)
/* 80AD2810  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD2814  48 00 00 54 */	b lbl_80AD2868
lbl_80AD2818:
/* 80AD2818  80 86 08 90 */	lwz r4, 0x890(r6)
/* 80AD281C  80 06 08 94 */	lwz r0, 0x894(r6)
/* 80AD2820  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD2824  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD2828  80 06 08 98 */	lwz r0, 0x898(r6)
/* 80AD282C  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD2830  48 00 00 38 */	b lbl_80AD2868
lbl_80AD2834:
/* 80AD2834  80 86 08 9C */	lwz r4, 0x89c(r6)
/* 80AD2838  80 06 08 A0 */	lwz r0, 0x8a0(r6)
/* 80AD283C  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD2840  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD2844  80 06 08 A4 */	lwz r0, 0x8a4(r6)
/* 80AD2848  90 03 10 D4 */	stw r0, 0x10d4(r3)
/* 80AD284C  48 00 00 1C */	b lbl_80AD2868
lbl_80AD2850:
/* 80AD2850  80 86 08 A8 */	lwz r4, 0x8a8(r6)
/* 80AD2854  80 06 08 AC */	lwz r0, 0x8ac(r6)
/* 80AD2858  90 83 10 CC */	stw r4, 0x10cc(r3)
/* 80AD285C  90 03 10 D0 */	stw r0, 0x10d0(r3)
/* 80AD2860  80 06 08 B0 */	lwz r0, 0x8b0(r6)
/* 80AD2864  90 03 10 D4 */	stw r0, 0x10d4(r3)
lbl_80AD2868:
/* 80AD2868  38 60 00 01 */	li r3, 1
/* 80AD286C  4E 80 00 20 */	blr 
