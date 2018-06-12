import java.awt.event.*;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.swing.*;
import javax.swing.table.*;

public class Demo extends JFrame implements ActionListener
{

    ArrayList<student> al = new ArrayList<>();
    JScrollPane jsp;
    JTable jt;
    MyTableModel tm;
    JButton bt1,bt2,bt3;
    public Demo()
    {        
        setLayout(null);
        jsp = new JScrollPane();
        jt = new JTable();
        tm = new MyTableModel();
        bt1 =new JButton("Select All");
        bt2 =new JButton("Deselect All");
        bt3 =new JButton("Delete Selection");

        jt.setModel(tm);
        jsp.setViewportView(jt);
        jsp.setBounds(30, 30, 400, 200);
        bt1.setBounds(30, 290, 120, 30);
        bt2.setBounds(160, 290, 120, 30);
        bt3.setBounds(280, 290, 150, 30);
        
        al.add(new student("abc", 1, false));
        al.add(new student("def", 2, false));
        al.add(new student("mno", 3, false));
        al.add(new student("xyz", 4, false));
        
        bt1.addActionListener(this);
        bt2.addActionListener(this);
        bt3.addActionListener(this);
        
        add(jsp);
        add(bt1);
        add(bt2);
        add(bt3);
        setSize(500, 500);
        setVisible(true);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        
    }

    public static void main(String[] args)
    {
        Demo  obj = new Demo();
    }

    @Override
    public void actionPerformed(ActionEvent e)
    {
        if(e.getSource()==bt1)
        {
            for (int i = 0; i < al.size(); i++)
            {
                al.get(i).cb=true;
            }
        }
        else if(e.getSource()==bt2)
        {
            for (int i = 0; i < al.size(); i++)
            {
                al.get(i).cb=false;
            }
        }
        else
        {
           ArrayList<student> al1 =new ArrayList<>();
            for (int i = 0; i < al.size(); i++)
            {
                if(!al.get(i).cb)
                {
                    al1.add(al.get(i));
                }
            }
            al = al1;
           
        }
        tm.fireTableDataChanged();
    }

    public class MyTableModel extends AbstractTableModel
    {

        String Title[] =
        {
            "Selection box","Roll No", "Name"
        };

        public String getColumnName(int a)
        {
            return Title[a];
        }

        @Override
        public int getRowCount()
        {
            return al.size();
        }

        @Override
        public int getColumnCount()
        {
            return Title.length;
        }

        @Override
        public Object getValueAt(int rowIndex, int columnIndex)
        {
            if (columnIndex == 0)
            {
                return al.get(rowIndex).cb;
            } else if (columnIndex == 1)
            {
                return al.get(rowIndex).name;

            } else
            {
                return al.get(rowIndex).rn;
            }
        }
        public Class getColumnClass(int c)
        {
            System.out.println(getValueAt(0, c).getClass());
            return getValueAt(0, c).getClass();
        }
        public void setValueAt(Object value, int row, int col)
        {            
            al.get(row).cb = (Boolean) (value);
            fireTableCellUpdated(row, col);
        }

        @Override
        public boolean isCellEditable(int rowIndex, int columnIndex)
        {
            if (columnIndex == 0)
            {
                return true;
            } else
            {
                return false;
            }
        }
    }

    class student
    {
        String name;
        int rn;
        boolean cb;
        public student(String name, int rn, boolean cb)
        {
            this.name = name;
            this.rn = rn;
            this.cb = cb;
        }
    }
}
