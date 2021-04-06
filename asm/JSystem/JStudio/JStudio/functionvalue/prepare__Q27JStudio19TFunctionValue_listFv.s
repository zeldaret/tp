lbl_802827A8:
/* 802827A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802827AC  7C 08 02 A6 */	mflr r0
/* 802827B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802827B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802827B8  7C 7F 1B 78 */	mr r31, r3
/* 802827BC  38 7F 00 08 */	addi r3, r31, 8
/* 802827C0  4B FF F1 8D */	bl range_prepare__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 802827C4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 802827C8  2C 00 00 02 */	cmpwi r0, 2
/* 802827CC  41 82 00 44 */	beq lbl_80282810
/* 802827D0  40 80 00 14 */	bge lbl_802827E4
/* 802827D4  2C 00 00 00 */	cmpwi r0, 0
/* 802827D8  41 82 00 18 */	beq lbl_802827F0
/* 802827DC  40 80 00 24 */	bge lbl_80282800
/* 802827E0  48 00 00 10 */	b lbl_802827F0
lbl_802827E4:
/* 802827E4  2C 00 00 04 */	cmpwi r0, 4
/* 802827E8  40 80 00 08 */	bge lbl_802827F0
/* 802827EC  48 00 00 34 */	b lbl_80282820
lbl_802827F0:
/* 802827F0  3C 60 80 28 */	lis r3, update_INTERPOLATE_NONE___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@ha /* 0x80282C10@ha */
/* 802827F4  38 03 2C 10 */	addi r0, r3, update_INTERPOLATE_NONE___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@l /* 0x80282C10@l */
/* 802827F8  90 1F 00 58 */	stw r0, 0x58(r31)
/* 802827FC  48 00 00 48 */	b lbl_80282844
lbl_80282800:
/* 80282800  3C 60 80 28 */	lis r3, update_INTERPOLATE_LINEAR___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@ha /* 0x80282C24@ha */
/* 80282804  38 03 2C 24 */	addi r0, r3, update_INTERPOLATE_LINEAR___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@l /* 0x80282C24@l */
/* 80282808  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8028280C  48 00 00 38 */	b lbl_80282844
lbl_80282810:
/* 80282810  3C 60 80 28 */	lis r3, update_INTERPOLATE_PLATEAU___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@ha /* 0x80282C58@ha */
/* 80282814  38 03 2C 58 */	addi r0, r3, update_INTERPOLATE_PLATEAU___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@l /* 0x80282C58@l */
/* 80282818  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8028281C  48 00 00 28 */	b lbl_80282844
lbl_80282820:
/* 80282820  3C 60 80 28 */	lis r3, update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@ha /* 0x80282CA8@ha */
/* 80282824  38 03 2C A8 */	addi r0, r3, update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@l /* 0x80282CA8@l */
/* 80282828  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8028282C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80282830  28 00 00 02 */	cmplwi r0, 2
/* 80282834  40 82 00 10 */	bne lbl_80282844
/* 80282838  3C 60 80 28 */	lis r3, update_INTERPOLATE_LINEAR___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@ha /* 0x80282C24@ha */
/* 8028283C  38 03 2C 24 */	addi r0, r3, update_INTERPOLATE_LINEAR___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_@l /* 0x80282C24@l */
/* 80282840  90 1F 00 58 */	stw r0, 0x58(r31)
lbl_80282844:
/* 80282844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028284C  7C 08 03 A6 */	mtlr r0
/* 80282850  38 21 00 10 */	addi r1, r1, 0x10
/* 80282854  4E 80 00 20 */	blr 
