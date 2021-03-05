/* 80070774 0006D6B4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80070778 0006D6B8  7C 08 02 A6 */ mflr r0
/* 8007077C 0006D6BC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80070780 0006D6C0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80070784 0006D6C4  93 C1 00 08 */ stw r30, 8(r1)
/* 80070788 0006D6C8  7C 7E 1B 79 */ or. r30, r3, r3
/* 8007078C 0006D6CC  7C 9F 23 78 */ mr r31, r4
/* 80070790 0006D6D0  41 82 00 98 */ beq lbl_80070828
/* 80070794 0006D6D4  80 7E 00 18 */ lwz r3, 0x18(r30)
/* 80070798 0006D6D8  28 03 00 00 */ cmplwi r3, 0
/* 8007079C 0006D6DC  41 82 00 10 */ beq lbl_800707AC
/* 800707A0 0006D6E0  4B F9 E9 ED */ bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 800707A4 0006D6E4  38 00 00 00 */ li r0, 0
/* 800707A8 0006D6E8  90 1E 00 18 */ stw r0, 0x18(r30)
lbl_800707AC:
/* 800707AC 0006D6EC  38 7E 04 C8 */ addi r3, r30, 0x4c8
/* 800707B0 0006D6F0  38 80 FF FF */ li r4, -1
/* 800707B4 0006D6F4  4B FF F9 5D */ bl __dt__11dAttParam_cFv
/* 800707B8 0006D6F8  38 7E 04 38 */ addi r3, r30, 0x438
/*.global __dt__10dAttList_cFv*/
/* 800707BC 0006D6FC  3C 80 80 03 */ lis r4, __dt__10dAttList_cFv@ha
/*.global __dt__10dAttList_cFv*/
/* 800707C0 0006D700  38 84 04 D0 */ addi r4, r4, __dt__10dAttList_cFv@l
/* 800707C4 0006D704  38 A0 00 14 */ li r5, 0x14
/* 800707C8 0006D708  38 C0 00 04 */ li r6, 4
/* 800707CC 0006D70C  48 2F 15 1D */ bl __destroy_arr
/* 800707D0 0006D710  38 7E 03 E0 */ addi r3, r30, 0x3e0
/*.global __dt__10dAttList_cFv*/
/* 800707D4 0006D714  3C 80 80 03 */ lis r4, __dt__10dAttList_cFv@ha
/*.global __dt__10dAttList_cFv*/
/* 800707D8 0006D718  38 84 04 D0 */ addi r4, r4, __dt__10dAttList_cFv@l
/* 800707DC 0006D71C  38 A0 00 14 */ li r5, 0x14
/* 800707E0 0006D720  38 C0 00 04 */ li r6, 4
/* 800707E4 0006D724  48 2F 15 05 */ bl __destroy_arr
/* 800707E8 0006D728  38 7E 03 38 */ addi r3, r30, 0x338
/*.global __dt__10dAttList_cFv*/
/* 800707EC 0006D72C  3C 80 80 03 */ lis r4, __dt__10dAttList_cFv@ha
/*.global __dt__10dAttList_cFv*/
/* 800707F0 0006D730  38 84 04 D0 */ addi r4, r4, __dt__10dAttList_cFv@l
/* 800707F4 0006D734  38 A0 00 14 */ li r5, 0x14
/* 800707F8 0006D738  38 C0 00 08 */ li r6, 8
/* 800707FC 0006D73C  48 2F 14 ED */ bl __destroy_arr
/* 80070800 0006D740  38 7E 00 28 */ addi r3, r30, 0x28
/*.global __dt__10dAttDraw_cFv*/
/* 80070804 0006D744  3C 80 80 03 */ lis r4, __dt__10dAttDraw_cFv@ha
/*.global __dt__10dAttDraw_cFv*/
/* 80070808 0006D748  38 84 05 4C */ addi r4, r4, __dt__10dAttDraw_cFv@l
/* 8007080C 0006D74C  38 A0 01 78 */ li r5, 0x178
/* 80070810 0006D750  38 C0 00 02 */ li r6, 2
/* 80070814 0006D754  48 2F 14 D5 */ bl __destroy_arr
/* 80070818 0006D758  7F E0 07 35 */ extsh. r0, r31
/* 8007081C 0006D75C  40 81 00 0C */ ble lbl_80070828
/* 80070820 0006D760  7F C3 F3 78 */ mr r3, r30
/* 80070824 0006D764  48 25 E5 19 */ bl __dl__FPv
lbl_80070828:
/* 80070828 0006D768  7F C3 F3 78 */ mr r3, r30
/* 8007082C 0006D76C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80070830 0006D770  83 C1 00 08 */ lwz r30, 8(r1)
/* 80070834 0006D774  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80070838 0006D778  7C 08 03 A6 */ mtlr r0
/* 8007083C 0006D77C  38 21 00 10 */ addi r1, r1, 0x10
/* 80070840 0006D780  4E 80 00 20 */ blr
