��Ȩ����������Ϊת�����£���ѭ CC 4.0 BY-SA ��ȨЭ�飬ת���븽��ԭ�ĳ������Ӻͱ�������
ԭ�����ӣ�https://blog.csdn.net/haoel/article/details/2886

 ����һ��д Makefile
 			���
��������
ʲô��makefile�������ܶ�Winodws�ĳ���Ա����֪�������������Ϊ��ЩWindows��IDE��Ϊ������������������Ҿ���Ҫ��һ���õĺ�professional�ĳ���Ա��makefile����Ҫ������ͺ�����������ô���HTML�ı༭��������������Ϊһ��רҵ��ʿ���㻹��Ҫ�˽�HTML�ı�ʶ�ĺ��塣�ر���Unix�µ��������룬��Ͳ��ܲ��Լ�дmakefile�ˣ��᲻��дmakefile����һ������˵����һ�����Ƿ�߱���ɴ��͹��̵�������
��Ϊ��makefile��ϵ�����������̵ı������һ�������е�Դ�ļ����������䰴���͡����ܡ�ģ��ֱ�������ɸ�Ŀ¼�У�makefile������һϵ�еĹ�����ָ������Щ�ļ���Ҫ�ȱ��룬��Щ�ļ���Ҫ����룬��Щ�ļ���Ҫ���±��룬�����ڽ��и����ӵĹ��ܲ�������Ϊmakefile����һ��Shell�ű�һ��������Ҳ����ִ�в���ϵͳ�����
makefile�����ĺô����ǡ������Զ������롱��һ��д�ã�ֻ��Ҫһ��make�������������ȫ�Զ����룬��������������������Ч�ʡ�make��һ������ߣ���һ������makefile��ָ�������ߣ�һ����˵���������IDE�������������磺Delphi��make��Visual C++��nmake��Linux��GNU��make���ɼ���makefile����Ϊ��һ���ڹ��̷���ı��뷽����
���ڽ������дmakefile�����±Ƚ��٣���������д��ƪ���µ�ԭ�򡣵�Ȼ����ͬ���̵�make������ͬ��Ҳ�в�ͬ���﷨�����䱾�ʶ����ڡ��ļ������ԡ��������£�����ҽ���GNU��make���н������ҵĻ�����RedHat Linux 8.0��make�İ汾��3.80���ؾ������make��Ӧ����Ϊ�㷺�ģ�Ҳ���õ����ġ������仹������ѭ��IEEE 1003.2-1992 ��׼�ģ�POSIX.2����
����ƪ�ĵ��У�����C/C++��Դ����Ϊ���ǻ��������Ա�Ȼ�漰һЩ����C/C++�ı����֪ʶ��������ⷽ������ݣ������λ�鿴��صı��������ĵ���������Ĭ�ϵı�������UNIX�µ�GCC��CC��

���ڳ���ı�������ӡ�������������������
�ڴˣ������˵���ڳ�������һЩ�淶�ͷ�����һ����˵��������C��C++������pas������Ҫ��Դ�ļ�������м�����ļ�����Windows��Ҳ���� .obj �ļ���UNIX���� .o �ļ����� Object File����������������루compile����Ȼ���ٰѴ�����Object File�ϳ�ִ���ļ�����������������ӣ�link����
����ʱ����������Ҫ�����﷨����ȷ���������������������ȷ�����ں��ߣ�ͨ��������Ҫ���߱�����ͷ�ļ�������λ�ã�ͷ�ļ���Ӧ��ֻ��������������Ӧ�÷���C/C++�ļ��У���ֻҪ���е��﷨��ȷ���������Ϳ��Ա�����м�Ŀ���ļ���һ����˵��ÿ��Դ�ļ���Ӧ�ö�Ӧ��һ���м�Ŀ���ļ���O�ļ�����OBJ�ļ�����
����ʱ����Ҫ�����Ӻ�����ȫ�ֱ��������ԣ����ǿ���ʹ����Щ�м�Ŀ���ļ���O�ļ�����OBJ�ļ������������ǵ�Ӧ�ó��������������ܺ������ڵ�Դ�ļ���ֻ�ܺ������м�Ŀ���ļ���Object File�����ڴ����ʱ������Դ�ļ�̫�࣬�������ɵ��м�Ŀ���ļ�̫�࣬��������ʱ��Ҫ���Ե�ָ���м�Ŀ���ļ���������ڱ���ܲ����㣬���ԣ�����Ҫ���м�Ŀ���ļ����������Windows�����ְ��С����ļ�����Library File)��Ҳ���� .lib �ļ�����UNIX�£���Archive File��Ҳ���� .a �ļ���
�ܽ�һ�£�Դ�ļ����Ȼ������м�Ŀ���ļ��������м�Ŀ���ļ�����ִ���ļ����ڱ���ʱ��������ֻ�������﷨���ͺ����������Ƿ��������������δ�������������������һ�����棬����������Object File���������ӳ���ʱ���������������е�Object File����Ѱ������ʵ�֣�����Ҳ������ǵ��ͻᱨ���Ӵ����루Linker Error������VC�£����ִ���һ���ǣ�Link 2001������˼˵��˵��������δ���ҵ�������ʵ�֡�����Ҫָ��������Object File.
�ã��Թ�������GNU��make����������ݣ��������𣬻��������ǿ�ʼ�ɡ�

Makefile ���ܡ�������������
make����ִ��ʱ����Ҫһ�� Makefile �ļ����Ը���make������Ҫ��ô����ȥ��������ӳ���
���ȣ�������һ��ʾ����˵��Makefile����д�����Ա�����һ��������ʶ�����ʾ����Դ��GNU��makeʹ���ֲᣬ�����ʾ���У����ǵĹ�����8��C�ļ�����3��ͷ�ļ�������Ҫдһ��Makefile������make������α���������⼸���ļ������ǵĹ����ǣ�    1������������û�б��������ô���ǵ�����C�ļ���Ҫ���벢�����ӡ�    2�����������̵�ĳ����C�ļ����޸ģ���ô����ֻ���뱻�޸ĵ�C�ļ���������Ŀ�����    3�����������̵�ͷ�ļ����ı��ˣ���ô������Ҫ�����������⼸��ͷ�ļ���C�ļ���������Ŀ�����
ֻҪ���ǵ�Makefileд�ù��ã����е���һ�У�����ֻ��һ��make����Ϳ�����ɣ�make������Զ����ܵظ��ݵ�ǰ���ļ��޸ĵ������ȷ����Щ�ļ���Ҫ�ر��룬�Ӷ��Լ���������Ҫ���ļ�������Ŀ�����

һ��Makefile�Ĺ���
�ڽ������Makefile֮ǰ�������������������Եؿ�һ��Makefile�Ĺ���
    target ... : prerequisites ...            command            ...            ...
    targetҲ����һ��Ŀ���ļ���������Object File��Ҳ������ִ���ļ�����������һ����ǩ��Label�������ڱ�ǩ�������ԣ��ں����ġ�αĿ�ꡱ�½��л���������
    prerequisites���ǣ�Ҫ�����Ǹ�target����Ҫ���ļ�����Ŀ�ꡣ
    commandҲ����make��Ҫִ�е�����������Shell���
����һ���ļ���������ϵ��Ҳ����˵��target��һ��������Ŀ���ļ�������prerequisites�е��ļ��������ɹ�������command�С�˵��һ�����˵��prerequisites�������һ�����ϵ��ļ���target�ļ�Ҫ�µĻ���command�����������ͻᱻִ�С������Makefile�Ĺ���Ҳ����Makefile������ĵ����ݡ�
˵���ף�Makefile�Ķ�����������һ�㣬�����ҵ���ƪ�ĵ�Ҳ�ý����ˡ��Ǻǡ�������Ȼ������Makefile�����ߺͺ��ģ���Ҫд��һ��Makefile���������һ��Ժ���һ��һ��ؽ���ҵĹ�����������������������ݻ������ء�����

����һ��ʾ��
����ǰ����˵�ģ����һ��������3��ͷ�ļ�����8��C�ļ�������Ϊ�����ǰ���������������������ǵ�MakefileӦ���������������ӵġ�
    edit : main.o kbd.o command.o display.o /           insert.o search.o files.o utils.o            cc -o edit main.o kbd.o command.o display.o /                       insert.o search.o files.o utils.o
    main.o : main.c defs.h            cc -c main.c    kbd.o : kbd.c defs.h command.h            cc -c kbd.c    command.o : command.c defs.h command.h            cc -c command.c    display.o : display.c defs.h buffer.h            cc -c display.c    insert.o : insert.c defs.h buffer.h            cc -c insert.c    search.o : search.c defs.h buffer.h            cc -c search.c    files.o : files.c defs.h buffer.h command.h            cc -c files.c    utils.o : utils.c defs.h            cc -c utils.c    clean :            rm edit main.o kbd.o command.o display.o /               insert.o search.o files.o utils.o
��б�ܣ�/���ǻ��з�����˼�������Ƚϱ���Makefile���׶������ǿ��԰�������ݱ������ļ�Ϊ��Makefile����makefile�����ļ��У�Ȼ���ڸ�Ŀ¼��ֱ���������make���Ϳ�������ִ���ļ�edit�����Ҫɾ��ִ���ļ������е��м�Ŀ���ļ�����ô��ֻҪ�򵥵�ִ��һ�¡�make clean���Ϳ����ˡ�
�����makefile�У�Ŀ���ļ���target��������ִ���ļ�edit���м�Ŀ���ļ���*.o���������ļ���prerequisites������ð�ź������Щ .c �ļ��� .h�ļ���ÿһ�� .o �ļ�����һ�������ļ�������Щ .o �ļ�����ִ���ļ� edit �������ļ���������ϵ��ʵ���Ͼ���˵����Ŀ���ļ�������Щ�ļ����ɵģ�����֮��Ŀ���ļ�����Щ�ļ����µġ�
�ڶ����������ϵ�󣬺�������һ�ж������������Ŀ���ļ��Ĳ���ϵͳ���һ��Ҫ��һ��Tab����Ϊ��ͷ����ס��make��������������ô�����ģ���ֻ��ִ������������make��Ƚ�targets�ļ���prerequisites�ļ����޸����ڣ����prerequisites�ļ�������Ҫ��targets�ļ�������Ҫ�£�����target�����ڵĻ�����ô��make�ͻ�ִ�к�����������
����Ҫ˵��һ����ǣ�clean����һ���ļ�����ֻ������һ���������֣��е���C�����е�lableһ������ð�ź�ʲôҲû�У���ô��make�Ͳ����Զ�ȥ���ļ��������ԣ�Ҳ�Ͳ����Զ�ִ���������������Ҫִ�����������Ҫ��make��������Ե�ָ�����lable�����֡������ķ����ǳ����ã����ǿ�����һ��makefile�ж��岻�õı�����Ǻͱ����޹ص�����������Ĵ��������ı��ݣ��ȵȡ�