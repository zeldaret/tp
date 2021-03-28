lbl_802A37FC:
/* 802A37FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3800  7C 08 02 A6 */	mflr r0
/* 802A3804  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3808  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A380C  28 00 00 00 */	cmplwi r0, 0
/* 802A3810  41 82 00 10 */	beq lbl_802A3820
/* 802A3814  4B FF FF 0D */	bl die_JAIStream___9JAIStreamFv
/* 802A3818  38 60 00 01 */	li r3, 1
/* 802A381C  48 00 00 60 */	b lbl_802A387C
lbl_802A3820:
/* 802A3820  80 03 02 90 */	lwz r0, 0x290(r3)
/* 802A3824  2C 00 00 04 */	cmpwi r0, 4
/* 802A3828  41 82 00 3C */	beq lbl_802A3864
/* 802A382C  40 80 00 4C */	bge lbl_802A3878
/* 802A3830  2C 00 00 02 */	cmpwi r0, 2
/* 802A3834  40 80 00 1C */	bge lbl_802A3850
/* 802A3838  2C 00 00 00 */	cmpwi r0, 0
/* 802A383C  40 80 00 08 */	bge lbl_802A3844
/* 802A3840  48 00 00 38 */	b lbl_802A3878
lbl_802A3844:
/* 802A3844  4B FF FE DD */	bl die_JAIStream___9JAIStreamFv
/* 802A3848  38 60 00 01 */	li r3, 1
/* 802A384C  48 00 00 30 */	b lbl_802A387C
lbl_802A3850:
/* 802A3850  38 00 00 05 */	li r0, 5
/* 802A3854  90 03 02 90 */	stw r0, 0x290(r3)
/* 802A3858  38 63 00 A8 */	addi r3, r3, 0xa8
/* 802A385C  4B FF 2E 71 */	bl cancel__13JASAramStreamFv
/* 802A3860  48 00 00 18 */	b lbl_802A3878
lbl_802A3864:
/* 802A3864  38 00 00 06 */	li r0, 6
/* 802A3868  90 03 02 90 */	stw r0, 0x290(r3)
/* 802A386C  38 63 00 A8 */	addi r3, r3, 0xa8
/* 802A3870  38 80 00 0A */	li r4, 0xa
/* 802A3874  4B FF 2D D9 */	bl stop__13JASAramStreamFUs
lbl_802A3878:
/* 802A3878  38 60 00 00 */	li r3, 0
lbl_802A387C:
/* 802A387C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3880  7C 08 03 A6 */	mtlr r0
/* 802A3884  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3888  4E 80 00 20 */	blr 
